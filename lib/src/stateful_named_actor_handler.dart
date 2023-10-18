import 'dart:mirrors';

import 'package:optional/optional.dart';
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
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
  spawn_protocol.ActorInvocationResponse handleInvoke(
      spawn_protocol.ActorInvocation invocation) {
    // TODO: implement invoke
    Optional<Object> actorInstance =
        Optional.of(ReflectHelper.createInstance(actorEntityType!));

    if (actorInstance.isEmpty) {
      throw StateError("Actor not found Or error during instance creation");
    }

    spawn_protocol.ActorInvocationResponse response =
        spawn_protocol.ActorInvocationResponse.create()
          ..actorName = invocation.actor.name
          ..actorSystem = invocation.actor.system
          ..updatedContext = spawn_protocol.Context.create();
    return response;
  }

  @override
  String getRegisteredName() {
    String? name = _statefulNamedActorAnnotationInstance?.name;

    if (name == null || name.isEmpty) {
      return MirrorSystem.getName(_mirror!.simpleName);
    }

    return name;
  }
}
