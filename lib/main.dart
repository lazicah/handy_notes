import 'package:flutter/material.dart';
import 'package:handy_notes/core/state/app_globals.dart';
import 'package:handy_notes/core/state/controllers/app_controller.dart';
import 'package:handy_notes/locator.dart';
import 'package:handy_notes/main_router.dart';
import 'package:handy_notes/providers.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:handy_notes/ui/views/app_notifications.dart';
import 'package:handy_notes/ui/views/main/startup_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  ThemeType themeType =
        context.select<AppController, ThemeType>((value) => value.themeType);
    AppTheme theme = AppTheme.fromType(themeType);
    return Provider.value(
      value: theme,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: AppGlobals.rootNavKey,
        title: AppTheme.name,
        theme: theme.themeData,
        builder: (context, child) {
          return GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: AppNotifications(child: child),
              onTap: () => Focus.of(context).unfocus());
        },
        initialRoute: StartUpPage.route,
        onGenerateRoute: MainRouter.generateRoute,
      ),
    );
  }
}
