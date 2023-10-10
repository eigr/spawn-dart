import 'package:spawn_app_example/src/generated/protos/domain.pb.dart';
import 'package:spawn_dart/spawn_dart.dart';

@StatefulNamedActor(
  'joe',
  State,
)
class JoeActor {
  @Action()
  Value setLanguage(Request request, Context<State> ctx) {
    return Value();
  }
}
