import 'package:spawn_app_example/src/generated/protos/domain.pb.dart';
import 'package:spawn_dart/spawn_dart.dart';

@StatefulNamedActor(
  'joe',
  State,
)
class JoeActor {
  @Action()
  Value setLanguage(Request request, Context ctx) {
    if (ctx.getState().isPresent) {
      var currentState = ctx.getState().value as State;
      print("Current state is $currentState");
    }

    return Value()
      ..withReponse(Reply.create()..response = "dart")
      ..withState(State.create()..languages.addAll(["erlang, dart"]));
  }
}
