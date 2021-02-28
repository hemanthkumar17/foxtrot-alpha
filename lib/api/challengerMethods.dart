import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChallengerMethods {
  Future<void> initChallenger(User user) async {
    DocumentReference userDocument =
        FirebaseFirestore.instance.collection('users').doc(user.uid);
    await userDocument.set(
        {"uid": user.uid, "userName": user.displayName, "points": 100},
        SetOptions(merge: false));
  }
}
