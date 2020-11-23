import 'package:handy_notes/core/services/firebase/firebase_base.dart';
import 'package:handy_notes/core/state/commands/base_command.dart';
import 'package:handy_notes/core/state/controllers/base_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../locator.dart';

class LogoutCommand extends BaseCommand {
  final _firebase = locator<FireService>();
  LogoutCommand(BuildContext c) : super(c);

  Future<void> execute() async {
    appController.setState(ViewState.Busy);
    try {
      await _firebase.firebaseAuth.signOut();
      appController.user = null;
      appController.setState(ViewState.Idle);
    } on FirebaseAuthException catch (e) {
      appController.setState(ViewState.Idle);
      print(e.code);
    } catch (e) {
      appController.setState(ViewState.Idle);
      print(e);
    }
  }
}
