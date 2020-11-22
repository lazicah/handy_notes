import 'package:handy_notes/ui/utils/colors/color_utils.dart';
import 'package:handy_notes/ui/utils/page_routes/page_routes.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/views/auth/login.dart';
import 'package:handy_notes/ui/views/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';

class AuthManager extends StatelessWidget {
  static const String route = '/auth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          context.widthPx > PageBreaks.TabletLandscape
              ? Expanded(
                  flex: 3,
                  child: Container(
                    color: ColorUtils.primary(context),
                  ),
                )
              : SizedBox.shrink(),
          Flexible(
            flex: 2,
            child: Container(
              height: double.infinity,
              child: Navigator(
                initialRoute: LoginView.route,
                onGenerateRoute: (settings) {
                  switch (settings.name) {
                    case LoginView.route:
                      return PageRoutes.fade(() => LoginView());
                    case SignUpView.route:
                      return PageRoutes.fade(() => SignUpView());
                    default:
                      return PageRoutes.fade(() => Scaffold(
                            body: Center(
                              child: Text('Page Not Found'),
                            ),
                          ));
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
