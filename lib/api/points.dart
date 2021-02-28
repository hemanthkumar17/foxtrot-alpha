import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Points {
  Future<void> updatePoints(User user, int points) async {
    DocumentReference userDocument =
        FirebaseFirestore.instance.collection('users').doc(user.uid);
    await userDocument.set({"points": points}, SetOptions(merge: true));
  }

  Future<void> challengerWin(User winner, User loser) async {
    DocumentReference userDocument =
        FirebaseFirestore.instance.collection('users').doc(winner.uid);
    DocumentSnapshot snap = await userDocument.get();
    updatePoints(winner, snap.data()["points"] + 10);

    userDocument =
        FirebaseFirestore.instance.collection('users').doc(loser.uid);
    snap = await userDocument.get();
    updatePoints(
        loser,
        ((snap.data()["points"] - 50) > 0)
            ? snap.data()["points"] - 5
            : snap.data()["points"]);
  }
}
