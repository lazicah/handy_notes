import 'package:handy_notes/core/state/controllers/base_controller.dart';
import 'package:handy_notes/ui/components/styled_progress_spinner.dart';
import 'package:handy_notes/ui/utils/colors/color_utils.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:flutter/material.dart';

class StatefulButton extends StatelessWidget {
  final Function onPressed;
  final ViewState state;
  final String label;
  const StatefulButton({
    Key key,
    this.onPressed,
    @required this.state,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state == ViewState.Busy) {
      return Center(
        child: StyledProgressSpinner(),
      );
    }
    return FlatButton(
      minWidth: 600,
      child: Text(label, style: AppTextStyles.Btn),
      onPressed: onPressed,
      disabledColor: Color.fromRGBO(0, 0, 0, 0.26),
      shape: RoundedRectangleBorder(borderRadius: Corners.s5Border),
      padding: EdgeInsets.symmetric(horizontal: Insets.l * 3, vertical: 20),
      color: ColorUtils.primaryVar(context),
    );
  }
}
