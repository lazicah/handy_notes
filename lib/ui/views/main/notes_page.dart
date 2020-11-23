import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:handy_notes/core/state/commands/app/change_theme_command.dart';
import 'package:handy_notes/core/state/controllers/app_controller.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';

class NotesPage extends StatelessWidget {
  static const String route = '/notes';
  @override
  Widget build(BuildContext context) {
    AppController appState = context.watch();
    AppTheme theme = context.watch();
    return Scaffold(
      appBar: AppBar(
        title: RichText(
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
        actions: [
          Switch.adaptive(
            onChanged: (bool value) {
              ToogleThemeCommand(context).execute();
            },
            value: appState.themeType == ThemeType.Light,
          )
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(Insets.m),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(Insets.m),
                width: double.infinity,
                height: kToolbarHeight,
                decoration: BoxDecoration(
                  color: theme.surface,
                  borderRadius: Corners.s30Border,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    HzSpace(Insets.m),
                    Text(
                      'Search your notes',
                      style: AppTextStyles.Body1.bold.copyWith(
                        color: theme.greyWeak,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Icon(Icons.grid_on),
                      onTap: () {},
                    ),
                    HzSpace(Insets.m),
                    CircleAvatar()
                  ],
                ),
              ),
              StaggeredGridView.builder(
                shrinkWrap: true,
                itemCount: 20,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                    SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(2, index.isEven ? 2 : 1),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                    
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
