import 'package:flutter/material.dart';
import 'package:handy_notes/ui/components/button_row.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';

class StyledDialog extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  final double maxHeight;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final Color bgColor;
  final double elevation;
  final bool shrinkWrap;

  const StyledDialog({
    Key key,
    this.child,
    this.maxWidth,
    this.maxHeight,
    this.padding,
    this.margin,
    this.bgColor,
    this.borderRadius,
    this.elevation,
    this.shrinkWrap = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadius radius = borderRadius ?? Corners.s8Border;
    AppTheme theme = context.watch();

    Widget innerContent = Container(
      padding: padding ?? EdgeInsets.all(Insets.lGutter),
      color: bgColor ?? theme.surface,
      //elevation: elevation ?? dialogTheme.elevation ?? 3,
      child: child,
    );

    if (shrinkWrap) {
      innerContent =
          IntrinsicWidth(child: IntrinsicHeight(child: innerContent));
    }

    return FocusTraversalGroup(
      child: Container(
        margin: margin ?? EdgeInsets.all(Insets.lGutter * 2),
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 280.0,
            maxHeight: maxHeight ?? double.infinity,
            maxWidth: maxWidth ?? double.infinity,
          ),
          child: ClipRRect(
            borderRadius: radius,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Material(
                  type: MaterialType.transparency, child: innerContent),
            ),
          ),
        ),
      ),
    );
  }
}

class OkCancelDialog extends StatelessWidget {
  final Function() onOkPressed;
  final Function() onCancelPressed;
  final String okLabel;
  final String cancelLabel;
  final String title;
  final String message;
  final double maxWidth;

  const OkCancelDialog(
      {Key key,
      this.onOkPressed,
      this.onCancelPressed,
      this.okLabel,
      this.cancelLabel,
      this.title,
      this.message,
      this.maxWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return StyledDialog(
      maxWidth: maxWidth ?? 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (title != null) ...[
            Text(title.toUpperCase(),
                style: AppTextStyles.Body1.textColor(theme.accent1Darker)),
            VtSpace(Insets.sm * 1.5),
            Container(color: theme.greyWeak.withOpacity(.35), height: 1),
            VtSpace(Insets.m * 1.5),
          ],
          Text(message, style: AppTextStyles.Body1.textHeight(1.5)),
          SizedBox(height: Insets.l),
          OkCancelBtnRow(
            onOkPressed: onOkPressed,
            onCancelPressed: onCancelPressed,
            okLabel: okLabel?.toUpperCase(),
            cancelLabel: cancelLabel?.toUpperCase(),
          )
        ],
      ),
    );
  }
}
