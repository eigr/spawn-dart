import 'dart:mirrors';

import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class StatefulNamedActorHandler implements ActorHandler {
  Type? actorEntity;
  DeclarationMirror? _mirror;
  StatefulNamedActor? statefulNamedActorAnnotationInstance;

  StatefulNamedActorHandler(Type actorEntity) {
    actorEntity = actorEntity;
    _mirror = reflectClass(actorEntity);

    var statefulActorAnnotationMirror = reflectClass(StatefulNamedActor);
    final InstanceMirror? statefulActorAnnotationInstanceMirror = _mirror
        ?.metadata
        .firstWhere((d) => d.type == statefulActorAnnotationMirror);

    statefulNamedActorAnnotationInstance =
        (statefulActorAnnotationInstanceMirror?.reflectee
            as StatefulNamedActor);
  }

  @override
  ActorRef getActorRef() {
    // TODO: implement getActorRef
    return ActorRef();
  }

  @override
  ActorInvocationResponse handleInvoke(ActorInvocation invocation) {
    return ActorInvocationResponse.create()..actorName = invocation.actor.name;
  }

  @override
  String getRegisteredName() {
    // TODO: implement getRegisteredName
    return "";
  }
}
