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
  int getSnapshotTimeout() => 0;

  @override
  int getMaxPoolSize() => 0;

  @override
  int getMinPoolSize() => 0;

  @override
  bool isStateful() => false;

  @override
  ActorInvocationResponse handleInvoke(ActorInvocation invocation) {
    // TODO: implement invoke
    throw UnimplementedError();
  }
}
