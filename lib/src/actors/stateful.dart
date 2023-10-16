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
