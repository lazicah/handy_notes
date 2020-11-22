import 'package:handy_notes/ui/utils/page_routes/page_routes.dart';
import 'package:handy_notes/ui/views/auth/auth_manager.dart';
import 'package:flutter/material.dart';
import 'package:handy_notes/ui/views/main/create_notes.dart';
import 'package:handy_notes/ui/views/main/note_detail.dart';
import 'package:handy_notes/ui/views/main/notes_page.dart';
import 'package:handy_notes/ui/views/main/startup_page.dart';

class MainRouter {
  static Route<T> generateRoute<T>(RouteSettings settings) {
    switch (settings.name) {
      case StartUpPage.route:
        return PageRoutes.material(() => StartUpPage());
      case AuthManager.route:
        return PageRoutes.fade(() => AuthManager());
      case NotesPage.route:
        return PageRoutes.material(() => NotesPage());
      case NoteDetails.route:
        return PageRoutes.material(() => NoteDetails());
      case CreateNote.route:
        return PageRoutes.material(() => CreateNote());
      default:
        return PageRoutes.fade(
          () => Scaffold(
            body: Center(
              child: Text('Page Not found'),
            ),
          ),
        );
    }
  }
}
