import 'package:optional/optional_internal.dart';
import 'package:protobuf/protobuf.dart';

class Action {
  final String name;
  final Type inputType;
  const Action([this.name = '', this.inputType = Object]);
}

class Context {
  Optional<Object> state = Optional.empty();

  Context();

  Context.withState(this.state);

  Optional<Object> getState() {
    return state;
  }
}

class Value {}

class ActorRef {}
