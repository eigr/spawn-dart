import 'dart:mirrors';

import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class StatefulUnNamedActorHandler implements ActorHandler {
  Type? actorEntity;
  DeclarationMirror? _mirror;
  StatefulUnNamedActor? statefulUnNamedActorAnnotationInstance;

  StatefulUnNamedActorHandler(Type actorEntity) {
    actorEntity = actorEntity;
    _mirror = reflectClass(actorEntity);

    var statefulUnamedActorAnnotationMirror =
        reflectClass(StatefulUnNamedActor);
    final InstanceMirror? statefulUnamedActorAnnotationInstanceMirror = _mirror
        ?.metadata
        .firstWhere((d) => d.type == statefulUnamedActorAnnotationMirror);

    statefulUnNamedActorAnnotationInstance =
        (statefulUnamedActorAnnotationInstanceMirror?.reflectee
            as StatefulUnNamedActor);
  }

  @override
  String getRegisteredName() {
    String? name = statefulUnNamedActorAnnotationInstance?.name;
    MirrorSystem.getName(_mirror!.simpleName);

    if (name == null || name.isEmpty) {
      return MirrorSystem.getName(_mirror!.simpleName);
    }

    return name;
  }

  @override
  List<ActionDefinition> getActionDefinitions() {
    // TODO: implement getActionDefinitions
    throw UnimplementedError();
  }

  @override
  ActorKind getActorKind() => ActorKind.unnamed;

  @override
  String getChannel() {
    // TODO: implement getChannel
    throw UnimplementedError();
  }

  @override
  int getDeactivatedTimeout() {
    // TODO: implement getDeactivatedTimeout
    throw UnimplementedError();
  }

  @override
  int getSnapshotTimeout() {
    // TODO: implement getSnapshotTimeout
    throw UnimplementedError();
  }

  @override
  int getMaxPoolSize() => 0;

  @override
  int getMinPoolSize() => 0;

  @override
  bool isStateful() => true;

  @override
  ActorInvocationResponse handleInvoke(ActorInvocation invocation) {
    // TODO: implement invoke
    throw UnimplementedError();
  }
}
