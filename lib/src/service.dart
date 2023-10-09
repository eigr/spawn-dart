import 'dart:io';
import 'dart:typed_data';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:spawn_dart/src/protocol/eigr/functions/protocol/actors/protocol.pb.dart';

class Service {
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
      ActorInvocation actorInvocationRequest =
          ActorInvocation.fromBuffer(request.read().toList() as List<int>);

      ActorInvocationResponse response = ActorInvocationResponse.getDefault();
      response.actorName = 'test';

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
