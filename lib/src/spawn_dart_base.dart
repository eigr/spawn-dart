import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/service.dart';
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
  late int serverPort = int.parse(Platform.environment['PORT'] ?? '8080');
  late String actorSystem;
  Map<String, ActorHandler> actorHandlers = {};

  SpawnSystem create(String system) {
    actorSystem = system;
    return this;
  }

  SpawnSystem withPort(int port) {
    serverPort = port;
    return this;
  }

  SpawnSystem withStatefulNamedActor(Type entity) {
    _logger.d('Registering StatefulNamedActor...');
    ActorHandler actorHandler = StatefulNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatefulUnNamedActor(Type entity) {
    _logger.d('Registering StatefulUnNamedActor...');
    ActorHandler actorHandler = StatefulUnNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatelessNamedActor(Type entity) {
    _logger.d('Registering StatelessNamedActor...');
    ActorHandler actorHandler = StatelessNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatelessUnNamedActor(Type entity) {
    _logger.d('Registering StatelessUnNamedActor...');
    ActorHandler actorHandler = StatelessUnNamedActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    actorHandlers[actorName] = actorHandler;
    return this;
  }

  SpawnSystem withStatelessPooledActor(Type entity) {
    _logger.d('Registering StatelessPooledActor...');
    ActorHandler actorHandler = StatelessPooledActorHandler(entity);
    String actorName = actorHandler.getRegisteredName();
    actorHandlers[actorName] = actorHandler;
    return this;
  }

  Future<void> start() async {
    final controller = Service(actorSystem, actorHandlers);

    final server = await shelf_io.serve(
      logRequests().addHandler(controller.handler),
      InternetAddress.anyIPv4,
      serverPort,
    );

    _logger.i('Serving at http://${server.address.host}:${server.port}');

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
