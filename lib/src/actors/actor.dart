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
  Optional<Object> _state = Optional.empty();
  Optional<Object> _value = Optional.empty();

  Optional<Object> get state {
    return _state;
  }

  Optional<Object> get value {
    return _value;
  }

  Value withReponse<R extends GeneratedMessage>(R response) {
    _value = Optional.of(response);
    return this;
  }

  Value withState<S extends GeneratedMessage>(S newState) {
    _state = Optional.of(newState);
    return this;
  }
}

class ActorRef {}
