import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

enum ActorKind { named, unnamed, pooled, proxy }

enum ActionDefinitionKind { normal, timer }

class ActionDefinition {
  final ActionDefinitionKind kind;
  final String name;
  int seconds;

  ActionDefinition(this.kind, this.name, {this.seconds = 0});

  String get actionName {
    return name;
  }

  ActionDefinitionKind get actionDefinitionKind {
    return kind;
  }

  int get timerSeconds {
    return seconds;
  }
}

abstract class ActorHandler {
  ActorKind getActorKind();
  List<ActionDefinition> getActionDefinitions();
  String getChannel();
  int getDeactivatedTimeout();
  String getRegisteredName();
  int getSnapshotTimeout();
  int getMaxPoolSize();
  int getMinPoolSize();
  bool isStateful();
  ActorInvocationResponse handleInvoke(ActorInvocation invocation);
}
