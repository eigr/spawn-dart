import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class HttpServerController {
  static const _headers = {
    'content-type': 'application/octet-stream',
  };

  Future<void> start() async {
    final port = int.parse(Platform.environment['PORT'] ?? '8080');

    final cascade = Cascade().add(_router);

    final server = await shelf_io.serve(
      logRequests().addHandler(cascade.handler),
      InternetAddress.anyIPv4,
      port,
    );

    print('Serving at http://${server.address.host}:${server.port}');

    // Used for tracking uptime of the server.
    _watch.start();
  }

// Router instance to handler requests.
  final _router = shelf_router.Router()
    ..post('/api/v1/actors/actions', _actorHandler);

  String _jsonEncode(Object? data) =>
      const JsonEncoder.withIndent(' ').convert(data);

  Response _actorHandler(Request request) {
    ActorInvocation actorInvocationRequest =
        ActorInvocation.fromBuffer(request.read().toList() as List<int>);

    return Response.ok(
      _jsonEncode({}),
      headers: {
        ..._headers,
      },
    );
  }

  final _watch = Stopwatch();

  final _dartVersion = () {
    final version = Platform.version;
    return version.substring(0, version.indexOf(' '));
  }();
}
