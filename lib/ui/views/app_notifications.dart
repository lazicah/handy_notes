import 'package:flutter/material.dart';

class AppNotifications extends StatelessWidget {
  final Widget child;

  const AppNotifications({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [child],));
  }
}
