import 'dart:io';

import 'package:spawn_dart/src/actor_handler.dart';

class SpawnClient {
  static final _client = HttpClient();
  static final _dartVersion = () {
    final version = Platform.version;
    return version.substring(0, version.indexOf(' '));
  }();
  static final String _registerUrlPath = "/api/v1/system";
  Map<String, ActorHandler> _actorHandlers = {};

  String _proxyHost = Platform.environment["PROXY_HTTP_HOST"] ?? "0.0.0.0";
  int _proxyPort = int.parse(Platform.environment["PROXY_HTTP_PORT"] ?? "9001");

  SpawnClient(Map<String, ActorHandler> actorHandlers) {
    _actorHandlers = actorHandlers;
  }

  SpawnClient.withConnectionParams(
      String host, int port, Map<String, ActorHandler> actorHandlers) {
    _proxyHost = host;
    _proxyPort = port;
    _actorHandlers = actorHandlers;
  }

  String get proxyHost {
    return _proxyHost;
  }

  int get proxyPort {
    return _proxyPort;
  }
}
