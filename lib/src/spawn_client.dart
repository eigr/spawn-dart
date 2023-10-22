import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/actor.pb.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class SpawnClient {
  static final _logger = Logger(
    filter: SpawnLogFilter(),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
  );

  static final http.Client _client = http.Client();
  static final _dartVersion = "Dart VM ${Platform.version}";
  static const _headers = {
    'content-type': 'application/octet-stream',
  };
  static final String _registerUrlPath = "/api/v1/system";
  static final String supportLibraryName = "spawn_dart";
  static final String supportLibraryVersion = "1.0.0";
  static final int protocolMinorVersion = 1;
  static final int protocolMajorVersion = 1;

  late String _spawnSystem;
  Map<String, ActorHandler> _actorHandlers = {};
  String _proxyHost = Platform.environment["PROXY_HTTP_HOST"] ?? "0.0.0.0";
  int _proxyPort = int.parse(Platform.environment["PROXY_HTTP_PORT"] ?? "9001");

  SpawnClient(String spawnSystem, Map<String, ActorHandler> actorHandlers) {
    _spawnSystem = spawnSystem;
    _actorHandlers = actorHandlers;
  }

  SpawnClient.withConnectionParams(String host, int port, String spawnSystem,
      Map<String, ActorHandler> actorHandlers) {
    _proxyHost = host;
    _proxyPort = port;
    _spawnSystem = spawnSystem;
    _actorHandlers = actorHandlers;
  }

  String get proxyHost {
    return _proxyHost;
  }

  int get proxyPort {
    return _proxyPort;
  }

  Future<RegistrationResponse> register() async {
    try {
      ActorSystem actorSystem = ActorSystem.create();
      ServiceInfo serviceInfo = ServiceInfo.create()
        ..protocolMinorVersion = protocolMinorVersion
        ..protocolMajorVersion = protocolMajorVersion
        ..serviceName = _spawnSystem
        ..serviceVersion = "UNKNOWN"
        ..serviceRuntime = _dartVersion
        ..supportLibraryName = supportLibraryName
        ..supportLibraryVersion = supportLibraryVersion;

      RegistrationRequest request = RegistrationRequest.create()
        ..serviceInfo = serviceInfo
        ..actorSystem = actorSystem;

      Uint8List requestBuffer = request.writeToBuffer();

      _logger.i("Registering ActorSystem $_spawnSystem with $request");
      var response = await _client.post(
          Uri.http("$_proxyHost:$_proxyPort", _registerUrlPath),
          headers: _headers,
          body: requestBuffer);

      _logger.i("Registration response status: $response.statusCode");
      return RegistrationResponse.fromBuffer(response.bodyBytes);
    } finally {
      _client.close();
    }
  }
}
