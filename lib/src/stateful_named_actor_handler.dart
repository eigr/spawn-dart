import 'dart:mirrors';

import 'package:optional/optional.dart';
import 'package:protobuf/protobuf.dart';
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/google/protobuf/any.pb.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart'
    as spawn_protocol;
import 'package:spawn_dart/src/reflect_helper.dart';

class StatefulNamedActorHandler implements ActorHandler {
  static final _logger = Logger(
    filter: SpawnLogFilter(),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
  );

  final Map<String, MethodMirror> actions = {};
  Type? actorEntityType;
  ClassMirror? _mirror;
  StatefulNamedActor? _statefulNamedActorAnnotationInstance;

  StatefulNamedActorHandler(Type actorEntity) {
    actorEntityType = actorEntity;
    _mirror = reflectClass(actorEntityType!);

    var statefulActorAnnotationMirror = reflectClass(StatefulNamedActor);
    final InstanceMirror? statefulActorAnnotationInstanceMirror = _mirror
        ?.metadata
        .firstWhere((d) => d.type == statefulActorAnnotationMirror);

    _statefulNamedActorAnnotationInstance =
        (statefulActorAnnotationInstanceMirror?.reflectee
            as StatefulNamedActor);

    List<MethodMirror> allDeclaredMethods =
        ReflectHelper.getAllMethods(_mirror!);

    actions.addAll(
        ReflectHelper.getMethodsByAnnotation(allDeclaredMethods, Action));

    if (actions.isEmpty) {
      var methodLength = allDeclaredMethods.length;

      _logger.w(
          "No Actions were found for this Actor Handler. However, there are $methodLength declared methods.");
    }
  }

  @override
  String getRegisteredName() {
    String? name = _statefulNamedActorAnnotationInstance?.name;

    if (name == null || name.isEmpty) {
      return MirrorSystem.getName(_mirror!.simpleName);
    }

    return name;
  }

  @override
  spawn_protocol.ActorInvocationResponse handleInvoke(
      spawn_protocol.ActorInvocation invocation) {
    Optional<Object> actorInstance =
        Optional.of(ReflectHelper.createInstance(actorEntityType!));

    if (actorInstance.isEmpty) {
      throw StateError(
          "Actor ${invocation.actor.name} not found or error during instance creation");
    }

    if (actions.containsKey(invocation.actionName)) {
      MethodMirror method = actions[invocation.actionName]!;

      Optional<Value> result = _doCall(actorInstance.value, method, invocation);

      if (result.isPresent) {
        Value resultValue = result.value;

        spawn_protocol.Context updatedCtx = spawn_protocol.Context.create();

        if (resultValue.metadata.isNotEmpty) {
          updatedCtx.metadata.addAll(resultValue.metadata);
        }

        if (resultValue.tags.isNotEmpty) {
          updatedCtx.tags.addAll(resultValue.tags);
        }

        if (resultValue.state.isPresent) {
          updatedCtx.state =
              Any.pack(resultValue.state.value as GeneratedMessage);
        }

        spawn_protocol.ActorInvocationResponse resp =
            spawn_protocol.ActorInvocationResponse.create();

        resp.actorName = invocation.actor.name;
        resp.actorSystem = invocation.actor.system;
        resp.updatedContext = updatedCtx;
        resp.checkpoint = resultValue.checkpoint;

        if (resultValue.value.isPresent) {
          resp.value = Any.pack(resultValue.value.value as GeneratedMessage);
        }

        if (resultValue.workflow.isPresent) {
          spawn_protocol.Workflow flow = spawn_protocol.Workflow.create();

          // TODO: Set type of workflows here
          resp.workflow = flow;
        }

        return resp;
      }
    }

    throw ArgumentError(
        "Action ${invocation.actionName} not found for Actor ${invocation.actor.name} or Unknown exception during action processing.");
  }

  Optional<Value> _doCall(Object actorInstance, MethodMirror method,
      spawn_protocol.ActorInvocation invocation) {
    final payload = switch (invocation.whichPayload()) {
      spawn_protocol.ActorInvocation_Payload.value => invocation.value,
      spawn_protocol.ActorInvocation_Payload.noop => null,
      _ => null,
    };

    if (invocation.currentContext.state.typeUrl.isEmpty) {
      return ReflectHelper.invoke(
          actorInstance, method, payload, Context.withState(Optional.empty()));
    } else {
      var ctxState = ReflectHelper.createInstance(
          _statefulNamedActorAnnotationInstance!.stateType);

      var state = invocation.currentContext.state
          .unpackInto(ctxState as GeneratedMessage);

      return ReflectHelper.invoke(actorInstance, method, payload,
          Context.withState(Optional.of(state)));
    }
  }
}
