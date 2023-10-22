import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';
import 'package:spawn_dart/src/service.dart';
import 'package:spawn_dart/src/spawn_client.dart';
import 'package:spawn_dart/src/stateful_named_actor_handler.dart';
import 'package:spawn_dart/src/stateful_unnamed_actor_handler.dart';
import 'package:spawn_dart/src/stateless_named_actor_handler.dart';
import 'package:spawn_dart/src/stateless_pooled_actor_handler.dart';
import 'package:spawn_dart/src/stateless_unnamed_actor_handler.dart';

class SpawnSystem {
  static final _logger = Logger(
    filter: SpawnLogFilter(),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
  );

  final _watch = Stopwatch();
  String _proxyHost = Platform.environment["PROXY_HTTP_HOST"] ?? "0.0.0.0";
  int _proxyPort = int.parse(Platform.environment["PROXY_HTTP_PORT"] ?? "9001");
  late int _serverPort = int.parse(Platform.environment['PORT'] ?? '8080');
  late String _actorSystem;
  Map<String, ActorHandler> _actorHandlers = {};

  SpawnSystem create(String system) {
    _actorSystem = system;
    return this;
  }

  SpawnSystem withPort(int port) {
    _serverPort = port;
    return this;
  }

  SpawnSystem withProxyHost(String host) {
    _proxyHost = host;
    return this;
  }

  SpawnSystem withProxyPort(int port) {
    _proxyPort = port;
    return this;
  }

  SpawnSystem withStatefulNamedActor(Type entity) {
    _logger.d('Registering StatefulNamedActor...');
    ActorHandler actorHandler = StatefulNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    _actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatefulUnNamedActor(Type entity) {
    _logger.d('Registering StatefulUnNamedActor...');
    ActorHandler actorHandler = StatefulUnNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    _actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatelessNamedActor(Type entity) {
    _logger.d('Registering StatelessNamedActor...');
    ActorHandler actorHandler = StatelessNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    _actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatelessUnNamedActor(Type entity) {
    _logger.d('Registering StatelessUnNamedActor...');
    ActorHandler actorHandler = StatelessUnNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    _actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatelessPooledActor(Type entity) {
    _logger.d('Registering StatelessPooledActor...');
    ActorHandler actorHandler = StatelessPooledActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    _actorHandlers[actorName] = actorHandler;
    return this;
  }

  Future<void> start() async {
    final SpawnClient spawnClient = SpawnClient.withConnectionParams(
        _proxyHost, _proxyPort, _actorSystem, _actorHandlers);

    final controller = Service(_actorSystem, _actorHandlers);

    final server = await shelf_io.serve(
      logRequests().addHandler(controller.handler),
      InternetAddress.anyIPv4,
      _serverPort,
    );

    _logger.i('Serving at http://${server.address.host}:${server.port}');

    final RegistrationResponse registrationResponse =
        await spawnClient.register();
    _logger.i("Registration  status $registrationResponse");

    // Used for tracking uptime of the server.
    _watch.start();
  }
}

class SimpleConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (var line in event.lines) {
      printOutput(line);
    }
  }

  void printOutput(String line) async {
    stdout.writeln('${DateTime.now()}: $line');
  }
}

class SpawnLogFilter extends LogFilter {
  Level logLevel;

  SpawnLogFilter([this.logLevel = Level.debug]);

  @override
  bool shouldLog(LogEvent event) {
    if (event.level.index >= logLevel.index) {
      return true;
    }
    return false;
  }
}

String capitalize(String? string) {
  if (string == null) {
    throw ArgumentError('string: $string');
  }

  if (string.isEmpty) {
    return string;
  }

  return string[0].toUpperCase() + string.substring(1);
}
