import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

abstract class ActorHandler {
  String getRegisteredName();
  ActorInvocationResponse handleInvoke(ActorInvocation invocation);
}
