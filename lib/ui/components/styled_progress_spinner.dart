import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StyledProgressSpinner extends StatelessWidget {
  final Color color;

  const StyledProgressSpinner({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return Center(
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(theme.accent1Darker),
            backgroundColor: color ?? Colors.white),
      ),
    );
  }
}
