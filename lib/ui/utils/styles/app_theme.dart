import 'package:handy_notes/ui/utils/colors/color_utils.dart';
import 'package:flutter/material.dart';

enum ThemeType { Light, Dark }

class AppTheme {
  static String name = 'Cost-o-matic';
  static ThemeType defaultTheme = ThemeType.Light;

  bool isDark;
  Color bg1; //
  Color surface; //
  Color bg2;
  Color accent1;
  Color accent1Dark;
  Color accent1Darker;
  Color accent2;
  Color accent3;
  Color grey;
  Color greyStrong;
  Color greyWeak;
  Color error;
  Color focus;

  Color primary;
  Color lighPrimary;
  Color darkPrimary;
  Color accent;
  Color primaryText;
  Color secondaryText;
  Color textIcons;
  Color divider;

  Color txt;
  Color accentTxt;

  /// Default constructor
  AppTheme({@required this.isDark}) {
    txt = isDark ? Colors.white : Colors.black;
  }

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    //Color c(String value) => ColorUtils.parseHex(value);
    switch (t) {
      case ThemeType.Light:
        return AppTheme(isDark: false)
          ..bg1 = Color(0xffF5F6FA)
          ..greyWeak = Color(0xff909f9c)
          ..grey = Color(0xff515d5a)
          ..greyStrong = Color(0xff151918)
          ..error = Colors.red.shade900
          ..surface = Color(0xffFFFFFF)
          ..focus = Color(0xFF4E33FF)
          ..primary = Color(0xffF5F6FA)
          ..lighPrimary = Color(0xffFFFFFF)
          ..darkPrimary = Color(0xffF5F6FA)
          ..accent = Color(0xFF4E33FF)
          ..primaryText = Color(0xFF212121)
          ..secondaryText = Color(0xFF757575)
          ..divider = Color(0xFFBDBDBD)
          ..textIcons = Color(0xFF000000);

      case ThemeType.Dark:
        return AppTheme(isDark: true)
          ..bg1 = Color(0xff0E121B)
          ..greyWeak = Color(0xff909f9c)
          ..grey = Color(0xff515d5a)
          ..greyStrong = Color(0xff151918)
          ..error = Colors.red.shade900
          ..surface = Color(0xff171C26)
          ..focus = Color(0xFF4E33FF)
          ..primary = Color(0xff0E121B)
          ..lighPrimary = Color(0xff171C26)
          ..darkPrimary = Color(0xff0E121B)
          ..accent = Color(0xFF4E33FF)
          ..primaryText = Color(0xFFFFFFFF)
          ..secondaryText = Color(0xFFF3F3F3)
          ..divider = Color(0xFFBDBDBD)
          ..textIcons = Color(0xFFFCFDFD);
    }
    return AppTheme.fromType(defaultTheme);
  }

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
      colorScheme: ColorScheme(
          brightness: isDark ? Brightness.dark : Brightness.light,
          primary: primary,
          primaryVariant: darkPrimary,
          secondary: accent,
          secondaryVariant: ColorUtils.shiftHsl(accent, -.2),
          background: bg1,
          surface: surface,
          onBackground: primaryText,
          onError: error,
          onSurface: primaryText,
          onPrimary: primaryText,
          onSecondary: secondaryText,
          error: error ?? Colors.red.shade400),
    );
    return t.copyWith(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        buttonColor: accent,
        textSelectionTheme: TextSelectionThemeData(
            selectionColor: accent, selectionHandleColor: accent),
        buttonTheme: ButtonThemeData(),
        cursorColor: accent,
        iconTheme: IconThemeData(color: textIcons),
        appBarTheme: AppBarTheme(color: bg1, elevation: 0),
        toggleableActiveColor: accent);
  }

  Color shift(Color c, double d) =>
      ColorUtils.shiftHsl(c, d * (isDark ? -1 : 1));
}
