class StatefulNamedActor {
  final String name;
  final Type stateType;
  final int deactivatedTimeout;
  final int snapshotTimeout;
  final String channel;

  const StatefulNamedActor(
      [this.name = '',
      this.stateType = Object,
      this.deactivatedTimeout = 60000,
      this.snapshotTimeout = 50000,
      this.channel = '']);
}

class StatefulUnNamedActor {
  final String name;
  final Type stateType;
  final int deactivatedTimeout;
  final int snapshotTimeout;
  final String channel;

  const StatefulUnNamedActor(
      [this.name = '',
      this.stateType = Object,
      this.deactivatedTimeout = 60000,
      this.snapshotTimeout = 50000,
      this.channel = '']);
}

class StatefulPooledActor {
  final String name;
  final String channel;
  final Type stateType;
  final int deactivatedTimeout;
  final int snapshotTimeout;
  final int minPoolSize;
  final int maxPoolSize;

  const StatefulPooledActor(
      [this.name = '',
      this.channel = '',
      this.stateType = Object,
      this.deactivatedTimeout = 10000,
      this.snapshotTimeout = 50000,
      this.minPoolSize = 1,
      this.maxPoolSize = 0]);
}
