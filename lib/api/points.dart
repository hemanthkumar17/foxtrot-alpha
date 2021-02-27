import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Points {
  Future<void> updatePoints(User user, int points) {
    DocumentReference userDocument =
        FirebaseFirestore.instance.collection('users').doc(user.uid);
    userDocument.set({"points": points}, SetOptions(merge: true));
  }

  Future<void> initPoints(User user) {
    DocumentReference userDocument =
        FirebaseFirestore.instance.collection('users').doc(user.uid);
    userDocument.set({"points": 100}, SetOptions(merge: false));
  }

  Future<void> challengerWin(User user) {}
}
