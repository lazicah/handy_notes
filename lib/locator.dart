import 'package:handy_notes/core/services/firebase/firebase_base.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator({bool test = false}) async {
  // Services

  await Firebase.initializeApp();
  locator.registerLazySingleton<FireService>(() => FirebaseService());

  // Utils

  //DataSources
}
