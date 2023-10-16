import 'dart:mirrors';

import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class StatelessUnNamedActorHandler implements ActorHandler {
  Type? actorEntity;
  DeclarationMirror? _mirror;

  StatelessUnNamedActorHandler(Type actorEntity) {
    actorEntity = actorEntity;
    _mirror = reflectClass(actorEntity);
  }

  @override
  ActorRef getActorRef() {
    // TODO: implement getActorRef
    return ActorRef();
  }

  @override
  ActorInvocationResponse invoke(ActorInvocation invocation) {
    // TODO: implement invoke
    throw UnimplementedError();
  }

  @override
  String getRegisteredName() {
    // TODO: implement getRegisteredName
    return "";
  }
}
