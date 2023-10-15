import 'dart:io';
import 'dart:typed_data';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class Service {
  static final _logger = Logger(
    filter: SpawnLogFilter(),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
  );

  static const _headers = {
    'content-type': 'application/octet-stream',
  };

  final _dartVersion = () {
    final version = Platform.version;
    return version.substring(0, version.indexOf(' '));
  }();

  Handler get handler {
    final router = Router();

    router.post('/api/v1/actors/actions', (Request request) async {
      List<int> bodyBuffer = await request.read().first;

      ActorInvocation actorInvocationRequest =
          ActorInvocation.fromBuffer(bodyBuffer);

      _logger.d("Received Actor Invocation Request: $actorInvocationRequest");

      ActorInvocationResponse response = ActorInvocationResponse.create()
        ..actorName = actorInvocationRequest.actor.name;

      Uint8List actorInvocationResp = response.writeToBuffer();

      return Response.ok(
        actorInvocationResp,
        headers: {
          ..._headers,
        },
      );
    });

    return router;
  }
}
