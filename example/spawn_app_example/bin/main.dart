import 'package:spawn_app_example/joe_actor.dart';
import 'package:spawn_dart/spawn_dart.dart';

void main() {
  SpawnSystem()
      .create("spawn-system")
      .withPort(8091)
      .withStatefulNamedActor(JoeActor)
      .start();
}
