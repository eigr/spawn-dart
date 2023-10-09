import 'package:logger/logger.dart';

class SpawnSystem {
  final _logger = Logger(
    printer: LogfmtPrinter(),
  );

  late int port;
  late String host;

  void registerActor() {
    _logger.d('Registering Actor...');
  }

  Future<void> start() async {}
}
