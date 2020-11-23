import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handy_notes/core/models/user/user_model.dart';
import 'package:handy_notes/core/services/firebase/firebase_base.dart';
import 'package:handy_notes/core/state/commands/base_command.dart';
import 'package:handy_notes/core/state/controllers/base_controller.dart';
import 'package:handy_notes/locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpCommand extends BaseCommand {
  final _firebase = locator<FireService>();
  SignUpCommand(BuildContext c) : super(c);
  Future<void> execute(
      {String email, String password, Map<String, String> others}) async {
    authController.setState(ViewState.Busy);
    appController.setState(ViewState.Busy);
    try {
      final UserCredential credential = await _firebase.firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      print(credential.user.email);
      print(others);

      await _firebase.firestore
          .collection('Users')
          .doc(credential.user.uid)
          .set(others);

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
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      authController.setState(ViewState.Idle);
      appController.setState(ViewState.Idle);
      print(e);
    }
  }
}
