import 'package:handy_notes/core/state/controllers/app_controller.dart';
import 'package:handy_notes/core/state/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:handy_notes/ui/components/dialogs.dart';
import 'package:provider/provider.dart';

import '../app_globals.dart';

abstract class BaseCommand {
  BuildContext _context;
  BaseCommand(BuildContext context) {
    _context = context;
  }

  NavigatorState get rootNav => AppGlobals.nav;

  T getProvided<T>() => Provider.of<T>(_context, listen: false);

  AppController get appController => getProvided();


  AuthController get authController => getProvided();
}

mixin ConfirmCommand on BaseCommand {
  bool isConfirmed = false;

  String _message = 'Are you sure';
  String _title = 'Confirm action';

  String getMessage() => _message;

  String getTitle() => _title;

  Future<void> executeConfirm() async {
    isConfirmed = await showDialog(
        context: _context,
        builder: (context) {
          return OkCancelDialog(
            title: getTitle(),
            message: getMessage(),
            onOkPressed: () => Navigator.pop<bool>(context, true),
            onCancelPressed: () => Navigator.pop<bool>(context, false),
          );
        });
    isConfirmed = isConfirmed ?? false;
  }
}

class JokeCommand extends BaseCommand with ConfirmCommand {
  JokeCommand(BuildContext c) : super(c);

  Future<void> execute() async {
   await super.executeConfirm();

    if (isConfirmed) {
      print('confirmed');
    } else
      return;
  }
}
