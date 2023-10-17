import 'dart:io';
import 'dart:typed_data';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:spawn_dart/spawn_dart.dart';
import 'package:spawn_dart/src/actor_handler.dart';
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

  late String system;
  late Map<String, ActorHandler> actorHandlers;

  Service(String system, Map<String, ActorHandler> actorHandlers) {
    system = system;
    actorHandlers = actorHandlers;
  }

  Handler get handler {
    final router = Router();

    router.post('/api/v1/actors/actions', (Request request) async {
      ActorInvocation actorInvocationRequest = await _parse(request);

      _logger.d("Received Actor Invocation Request: $actorInvocationRequest");
      return _handleInvocation(actorInvocationRequest);
    });

    return router;
  }

  Future<ActorInvocation> _parse(Request request) async {
    List<int> bodyBuffer = await request.read().first;

    return ActorInvocation.fromBuffer(bodyBuffer);
  }

  Response _handleInvocation(ActorInvocation actorInvocationRequest) {
    ActorInvocationResponse response;
    if (actorInvocationRequest.actor.system == system &&
        actorHandlers.containsKey(actorInvocationRequest.actor.name)) {
      ActorHandler handler = actorHandlers[actorInvocationRequest.actor.name]!;
      response = handler.handleInvoke(actorInvocationRequest);
    } else {
      response = ActorInvocationResponse.create();
    }

    Uint8List actorInvocationResp = response.writeToBuffer();

    return Response.ok(
      actorInvocationResp,
      headers: {
        ..._headers,
      },
    );
  }
}
