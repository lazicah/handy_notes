import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:handy_notes/core/models/notes/notes.dart';
import 'package:handy_notes/core/state/commands/app/change_theme_command.dart';
import 'package:handy_notes/core/state/controllers/app_controller.dart';
import 'package:handy_notes/core/state/controllers/notes_controller.dart';
import 'package:handy_notes/core/utils/formatting.dart';
import 'package:handy_notes/ui/utils/colors/color_utils.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';
import 'package:handy_notes/ui/views/main/note_detail.dart';

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
                style: AppTextStyles.H2.bold.copyWith(color: theme.primaryText),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
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
                    HzSpace(Insets.m),
                    CircleAvatar()
                  ],
                ),
              ),
              VtSpace(Insets.m),
              MainBody(),
              VtSpace(70),
            ],
          ),
        ),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotesController notesState = context.watch();
    if (notesState.notes.isEmpty) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 200),
        child: Center(child: Text('You have no Notes')),
      );
    }
    return Container(
      child: StaggeredGridView.builder(
        shrinkWrap: true,
        itemCount: notesState.notes.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          staggeredTileCount: notesState.notes.length,
          staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
        ),
        itemBuilder: (BuildContext context, int index) {
          NotesEntity entity = notesState.notes[index];
          return NotesCard(
            entity: entity,
          );
        },
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final NotesEntity entity;
  const NotesCard({
    Key key,
    this.entity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return Card(
      color: ColorUtils.parseHex(entity.labelColor),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, NoteDetails.route, arguments: entity);
        },
        child: Container(
            padding: EdgeInsets.all(Insets.m),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entity.title,
                  style: AppTextStyles.Body1.bold.copyWith(
                    color: Color(0xff0E121B),
                  ),
                ),
                VtSpace(Insets.m),
                Text(
                  convertTimestampToDateString(entity.createdAt),
                  style: AppTextStyles.Body2.copyWith(
                    color: Color(0xff0E121B).withAlpha(100),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
