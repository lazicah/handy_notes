import 'package:flutter/material.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';

class OkCancelBtnRow extends StatelessWidget {
  final Function() onOkPressed;
  final Function() onCancelPressed;
  final String okLabel;
  final String cancelLabel;
  final double minHeight;

  const OkCancelBtnRow(
      {Key key,
      this.onOkPressed,
      this.onCancelPressed,
      this.okLabel,
      this.cancelLabel,
      this.minHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        if (onOkPressed != null)
          FlatButton(
              child: Text(okLabel ?? "Ok".toUpperCase()),
              onPressed: onOkPressed),
        HzSpace(Insets.m),
        if (onCancelPressed != null)
          FlatButton(
              child: Text(cancelLabel ?? "Cancel".toUpperCase()),
              onPressed: onOkPressed),
      ],
    );
  }
}
