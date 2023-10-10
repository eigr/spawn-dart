import 'dart:io';

import 'package:logger/logger.dart';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:spawn_dart/src/service.dart';

class SpawnSystem {
  final _logger = Logger(
    printer: LogfmtPrinter(),
  );

  final _watch = Stopwatch();

  late int serverPort = int.parse(Platform.environment['PORT'] ?? '8080');

  SpawnSystem withActor(Type entity) {
    _logger.d('Registering Actor...');
    return this;
  }

  SpawnSystem withPort(int port) {
    serverPort = port;
    return this;
  }

  Future<void> start() async {
    final controller = Service();

    final server = await shelf_io.serve(
      logRequests().addHandler(controller.handler),
      InternetAddress.anyIPv4,
      serverPort,
    );

    print('Serving at http://${server.address.host}:${server.port}');

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

  SpawnLogFilter([this.logLevel = Level.info]);

  @override
  bool shouldLog(LogEvent event) {
    if (event.level.index >= logLevel.index) {
      return true;
    }
    return false;
  }
}

String capitalize(String string) {
  if (string == null) {
    throw ArgumentError('string: $string');
  }

  if (string.isEmpty) {
    return string;
  }

  return string[0].toUpperCase() + string.substring(1);
}
