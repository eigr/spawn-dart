class Action {
  final String name;
  final Type inputType;
  const Action([this.name = '', this.inputType = Object]);
}

class Context<T> {
  late T state;

  Context(this.state);

  T getState() {
    return state;
  }
}

class Value {}
