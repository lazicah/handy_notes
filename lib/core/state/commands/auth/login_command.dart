import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handy_notes/core/models/user/user_model.dart';
import 'package:handy_notes/core/services/firebase/firebase_base.dart';
import 'package:handy_notes/core/state/commands/base_command.dart';
import 'package:handy_notes/core/state/controllers/base_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../locator.dart';

class LoginCommand extends BaseCommand {
  final _firebase = locator<FireWebBaseService>();
  LoginCommand(BuildContext c) : super(c);

  Future<void> execute({String email, String password}) async {
    authController.setState(ViewState.Busy);
    appController.setState(ViewState.Busy);
    try {
      final UserCredential credential = await _firebase.firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      print(credential.user.uid);

      DocumentSnapshot data = await _firebase.firestore
          .collection('Users')
          .doc(credential.user.uid)
          .get();

      print(data.data());

      if (data.data() != null) {
        UserEntity user = UserEntity.fromJson(json.encode(data.data()));
        var newUser = user.rebuild((b) => b
          ..email = credential.user.email
          ..userId = credential.user.uid);
        print('New User $newUser');
        appController.user = newUser;
      }

      authController.setState(ViewState.Idle);
      appController.setState(ViewState.Idle);
    } on FirebaseAuthException catch (e) {
      authController.setState(ViewState.Idle);
      appController.setState(ViewState.Idle);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      appController.setState(ViewState.Idle);
      print(e);
    }
  }
}
