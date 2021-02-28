import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/model/challenger.dart';

class ChallengerMethods {
  Future<void> initChallenger(User user) async {
    DocumentReference userDocument =
        FirebaseFirestore.instance.collection('users').doc(user.uid);
    await userDocument.set(
        {"uid": user.uid, "userName": user.displayName, "points": 100},
        SetOptions(merge: false));
  }

  Future<List<Challenger>> getLeaderboard() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('users').get();
    List<Challenger> challengers = [];
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i];
      challengers.add(Challenger.fromMap(a.data()));
    }
    challengers.sort((a, b) => a.points.compareTo(b.points));
    print(challengers);
    return challengers;
  }
}
