import 'package:flutter/material.dart';
import 'package:handy_notes/ui/components/styled_progress_spinner.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';
import 'package:handy_notes/ui/views/main/notes_page.dart';

class StartUpPage extends StatefulWidget {
  static const String route = '/';

  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      decideView();
    });
    super.initState();
  }

  Future<void> decideView() async {
    await Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.pushReplacementNamed(context, NotesPage.route));
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          Align(
            alignment: AlignmentDirectional.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Handy',
                    style: AppTextStyles.H2.bold
                        .copyWith(color: Color(0xffffd633), fontSize: 30),
                  ),
                  TextSpan(
                    text: ' Notes',
                    style: AppTextStyles.H2.bold,
                  )
                ],
              ),
            ),
          ),
          VtSpace(60),
          Positioned(bottom: 20, child: StyledProgressSpinner())
        ],
      ),
    );
  }
}
