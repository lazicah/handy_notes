import 'package:flutter/src/widgets/framework.dart';
import 'package:handy_notes/core/state/commands/base_command.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';

class ToogleThemeCommand extends BaseCommand {
  ToogleThemeCommand(BuildContext context) : super(context);

  Future<void> execute() async {
    if (appController.themeType == ThemeType.Dark) {
      appController.themeType = ThemeType.Light;
    } else {
      appController.themeType = ThemeType.Dark;
    }
  }
}
