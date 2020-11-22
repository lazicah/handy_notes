import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FireWebBaseService {
  FirebaseFirestore get firestore;

  FirebaseAuth get firebaseAuth;

  
}

class FirebaseService extends FireWebBaseService {
  
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  

  @override
  FirebaseFirestore get firestore => _firestore;

  @override
  FirebaseAuth get firebaseAuth => _auth;
}
