import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

abstract class ActorHandler {
  ActorRef getActorRef();
  String getRegisteredName();
  ActorInvocationResponse handleInvoke(ActorInvocation invocation);
}
