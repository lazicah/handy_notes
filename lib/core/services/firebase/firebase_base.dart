import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FireService {
  FirebaseFirestore get firestore;

  FirebaseAuth get firebaseAuth;

  
}

class FirebaseService extends FireService {
  
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  

  @override
  FirebaseFirestore get firestore => _firestore;

  @override
  FirebaseAuth get firebaseAuth => _auth;
}
