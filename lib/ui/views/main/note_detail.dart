import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_notes/core/models/notes/notes.dart';
import 'package:handy_notes/core/utils/formatting.dart';
import 'package:handy_notes/ui/utils/styles/app_theme.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';

class NoteDetails extends StatelessWidget {
  static const String route = '/details';
  final NotesEntity entity;

  const NoteDetails({Key key, this.entity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.edit_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Insets.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              enabled: false,
              initialValue: entity.title,
              maxLines: null,
              style: AppTextStyles.H1.bold,
            ),
            VtSpace(Insets.m),
            Text(
              convertTimestampToDateString(entity.createdAt),
              style: AppTextStyles.Body2.copyWith(
                color: theme.primaryText,
              ),
            ),
            VtSpace(Insets.m),
            TextFormField(
              enabled: false,
              initialValue: entity.content,
              maxLines: null,
              style: AppTextStyles.Body1,
            ),
          ],
        ),
      ),
    );
  }
}
