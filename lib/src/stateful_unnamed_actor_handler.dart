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
  ActorInvocationResponse handleInvoke(ActorInvocation invocation) {
    // TODO: implement invoke
    throw UnimplementedError();
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
}
