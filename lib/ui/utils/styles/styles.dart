import 'package:handy_notes/ui/utils/ui_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Durations {
  static Duration get fastest => .15.seconds;

  static Duration get fast => .25.seconds;

  static Duration get medium => .35.seconds;

  static Duration get slow => .7.seconds;
}

class PageBreaks {
  static double get LargePhone => 550;

  static double get TabletPortrait => 768;

  static double get TabletLandscape => 1024;

  static double get Desktop => 1440;

  static bool isMobile(BuildContext context) => context.widthPx <= LargePhone;

  static bool isDesktop(BuildContext context) =>
      context.widthPx > TabletLandscape;
}

class Insets {
  static double gutterScale = 1;

  static double scale = 1;

  /// Dynamic insets, may get scaled with the device size
  static double get mGutter => m * gutterScale;

  static double get lGutter => l * gutterScale;

  static double get xs => 2 * scale;

  static double get sm => 6 * scale;

  static double get m => 12 * scale;

  static double get l => 24 * scale;

  static double get xl => 36 * scale;
}

class FontSizes {
  static double get scale => 1;

  static double get s11 => 11 * scale;

  static double get s12 => 12 * scale;

  static double get s14 => 14 * scale;

  static double get s16 => 16 * scale;

  static double get s18 => 18 * scale;

  static double get s20 => 20 * scale;
  static double get s24 => 24 * scale;

  static double get s28 => 28 * scale;

  static double get s36 => 36 * scale;
}

class Sizes {
  static double hitScale = 1;

  static double get hit => 40 * hitScale;

  static double get iconMed => 20;

  static double get sideBarSm => 150 * hitScale;

  static double get sideBarMed => 200 * hitScale;

  static double get sideBarLg => 290 * hitScale;
}

class AppTextStyles {
  static TextStyle manrope = GoogleFonts.manrope();

  static TextStyle get H1 => manrope.size(FontSizes.s36);

  static TextStyle get H2 => manrope.size(FontSizes.s20);

  static TextStyle get Body1 => manrope.size(FontSizes.s14);

  static TextStyle get Body2 => manrope.size(FontSizes.s12);

  static TextStyle get Body3 => manrope.size(FontSizes.s11);

  static TextStyle get Callout => manrope.size(FontSizes.s14).letterSpace(1.75);

  static TextStyle get CalloutFocus => Callout.bold;

  static TextStyle get Btn => manrope.size(FontSizes.s14).letterSpace(1.75);

  static TextStyle get BtnSelected =>
      manrope.size(FontSizes.s14).letterSpace(1.75);

  static TextStyle get Footnote => manrope.size(FontSizes.s11);

  static TextStyle get Caption => manrope.size(FontSizes.s11).letterSpace(.3);
}

class Shadows {
  static bool enabled = true;

  static double get mRadius => 5;

  static List<BoxShadow> typeA(Color color, [double opacity = 0]) {
    return enabled
        ? [
            BoxShadow(
              color: color.withOpacity(opacity ?? .03),
              blurRadius: mRadius,
              spreadRadius: mRadius / 2,
              offset: Offset(1, 1),
            ),
            BoxShadow(
              color: color.withOpacity(opacity ?? .04),
              blurRadius: mRadius / 2,
              spreadRadius: mRadius / 4,
              offset: Offset(1, 1),
            )
          ]
        : null;
  }

  static List<BoxShadow> typeB(Color color, [double opacity = 0]) {
    return enabled
        ? [
            BoxShadow(
              color: color.withOpacity(opacity ?? .03),
              blurRadius: mRadius,
              spreadRadius: mRadius / 2,
              offset: Offset(1, 0),
            ),
            BoxShadow(
              color: color.withOpacity(opacity ?? .04),
              blurRadius: mRadius / 2,
              spreadRadius: mRadius / 4,
              offset: Offset(1, 0),
            )
          ]
        : null;
  }
}

class Corners {
  static double get btn => s5;

  static double get dialog => 12;

  /// Xs
  static double get s3 => 3;

  static BorderRadius get s3Border => BorderRadius.all(s3Radius);

  static Radius get s3Radius => Radius.circular(s3);

  /// Small
  static double get s5 => 5;

  static BorderRadius get s5Border => BorderRadius.all(s5Radius);

  static Radius get s5Radius => Radius.circular(s5);

  /// Medium
  static double get s8 => 8;

  static BorderRadius get s8Border => BorderRadius.all(s8Radius);

  static Radius get s8Radius => Radius.circular(s8);

  /// Large
  static double get s10 => 10;

  static BorderRadius get s10Border => BorderRadius.all(s10Radius);

  static Radius get s10Radius => Radius.circular(s10);

  /// Extra-Large
  static double get s15 => 15;
  static Radius get s15Radius => Radius.circular(s15);
  static BorderRadius get s15Border => BorderRadius.all(s15Radius);

  /// ExtraExtra-Large
  static double get s30 => 30;
  static Radius get s30Radius => Radius.circular(s30);
  static BorderRadius get s30Border => BorderRadius.all(s30Radius);
}

class VtSpace extends StatelessWidget {
  final double size;

  VtSpace(this.size);

  @override
  Widget build(BuildContext context) => SizedBox(height: size);
}

class HzSpace extends StatelessWidget {
  final double size;

  HzSpace(this.size);

  @override
  Widget build(BuildContext context) => SizedBox(width: size);
}
