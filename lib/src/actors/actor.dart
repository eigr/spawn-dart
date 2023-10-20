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

class Broadcast {}

class Forward {}

class Pipe {}

class SideEffect {}

class Workflow {
  Optional<Broadcast> _broadcast = Optional.empty();
  Optional<Forward> _forward = Optional.empty();
  Optional<Pipe> _pipe = Optional.empty();
  Optional<SideEffect> _sideEffect = Optional.empty();

  Optional<Broadcast> get broadcast {
    return _broadcast;
  }

  Optional<SideEffect> get effects {
    return _sideEffect;
  }

  Optional<Forward> get forward {
    return _forward;
  }

  Optional<Pipe> get pipe {
    return _pipe;
  }

  Workflow withBroadcast(Broadcast broadcast) {
    _broadcast = Optional.of(broadcast);
    return this;
  }

  Workflow withSideEffect(SideEffect sideEffect) {
    _sideEffect = Optional.of(sideEffect);
    return this;
  }

  Workflow withForward(Forward forward) {
    if (_pipe.isPresent) {
      throw ArgumentError(
          "You cannot define a Forward if a Pipe has already been defined. Only use Forwards or Pipes.");
    }

    _forward = Optional.of(forward);
    return this;
  }

  Workflow withPipe(Pipe pipe) {
    if (_forward.isPresent) {
      throw ArgumentError(
          "You cannot define a Pipe if a Forward has already been defined. Only use Pipes or Forwards.");
    }

    _pipe = Optional.of(pipe);
    return this;
  }
}

class Value {
  bool _checkpoint = false;
  Optional<Object> _state = Optional.empty();
  Optional<Object> _value = Optional.empty();
  final Map<String, String> _metadata = {};
  final Map<String, String> _tags = {};
  Optional<Workflow> _workflow = Optional.empty();

  bool get checkpoint {
    return _checkpoint;
  }

  Map<String, String> get metadata {
    return _metadata;
  }

  Optional<Object> get state {
    return _state;
  }

  Optional<Object> get value {
    return _value;
  }

  Map<String, String> get tags {
    return _tags;
  }

  Optional<Workflow> get workflow {
    return _workflow;
  }

  Value withCheckpoint(bool checkpoint) {
    _checkpoint = checkpoint;
    return this;
  }

  Value withFlow(Workflow workflow) {
    _workflow = Optional.of(workflow);
    return this;
  }

  Value withAllMetada(Map<String, String> metadata) {
    _metadata.addAll(metadata);
    return this;
  }

  Value withMetada(String key, String value) {
    _metadata[key] = value;
    return this;
  }

  Value withReponse<R extends GeneratedMessage>(R response) {
    _value = Optional.of(response);
    return this;
  }

  Value withState<S extends GeneratedMessage>(S newState) {
    _state = Optional.of(newState);
    return this;
  }

  Value withTags(Map<String, String> tags) {
    _tags.addAll(tags);
    return this;
  }

  Value withTag(String key, String value) {
    _tags[key] = value;
    return this;
  }
}

class ActorRef {}
