import 'dart:mirrors';

import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class StatelessPooledActorHandler implements ActorHandler {
  Type? actorEntity;
  DeclarationMirror? _mirror;

  StatelessPooledActorHandler(Type actorEntity) {
    actorEntity = actorEntity;
    _mirror = reflectClass(actorEntity);
  }

  @override
  String getRegisteredName() {
    // TODO: implement getRegisteredName
    return "";
  }

  @override
  List<ActionDefinition> getActionDefinitions() {
    // TODO: implement getActionDefinitions
    throw UnimplementedError();
  }

  @override
  ActorKind getActorKind() => ActorKind.pooled;

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
  int getSnapshotTimeout() => 0;

  @override
  int getMaxPoolSize() {
    // TODO: implement getMaxPoolSize
    throw UnimplementedError();
  }

  @override
  int getMinPoolSize() {
    // TODO: implement getMinPoolSize
    throw UnimplementedError();
  }

  @override
  bool isStateful() => false;

  @override
  ActorInvocationResponse handleInvoke(ActorInvocation invocation) {
    // TODO: implement invoke
    throw UnimplementedError();
  }
}
