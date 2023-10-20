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

class Value {
  late Object _state;
  late Object _value;

  Object get state {
    return _state;
  }

  Object get value {
    return _value;
  }

  Value withReponse<R extends GeneratedMessage>(R response) {
    _value = response;
    return this;
  }

  Value withState<S extends GeneratedMessage>(S newState) {
    _state = newState;
    return this;
  }
}

class ActorRef {}
