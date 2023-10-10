class StatelessNamedActor {
  final String name;
  final String channel;
  final int deactivatedTimeout;

  const StatelessNamedActor(
      [this.name = '', this.channel = '', this.deactivatedTimeout = 10000]);
}

class StatelessUnNamedActor {
  final String name;
  final String channel;
  final int deactivatedTimeout;

  const StatelessUnNamedActor(
      [this.name = '', this.channel = '', this.deactivatedTimeout = 10000]);
}

class StatelessPooledActor {
  final String name;
  final String channel;
  final int deactivatedTimeout;
  final int minPoolSize;
  final int maxPoolSize;

  const StatelessPooledActor(
      [this.name = '',
      this.channel = '',
      this.deactivatedTimeout = 10000,
      this.minPoolSize = 1,
      this.maxPoolSize = 0]);
}
