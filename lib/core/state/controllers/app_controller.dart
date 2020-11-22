import 'package:handy_notes/core/models/user/user_model.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';

import 'base_controller.dart';

class AppController extends BaseController {
  UserEntity _entity;
  UserEntity get user => _entity;

  set user(UserEntity newUser) {
    print('recieved $newUser');
    _entity = new UserEntity((b) => b..replace(newUser));
    updateState();
  }

  ///Handle Theme Changes
  ThemeType _themeType = ThemeType.Dark;
  ThemeType get themeType => _themeType;

  set themeType(ThemeType themeType) {
    _themeType = themeType;
    updateState();
  }
}
