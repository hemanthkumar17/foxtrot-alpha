import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/model/challenger.dart';
import 'package:myapp/model/challenge_match.dart';

import 'auth.dart';

class Challenge {
  Future<void> initChallenge() async {
    ChallengeMatch newChallenge;
    User user = Auth.user;
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('users').get();
    List<Map> challengers = [];
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i];
      if (a.data()['uid'] != user.uid)
        challengers.add(a.data());
      else
        newChallenge.contender = Challenger.fromMap(a.data());
      debugPrint(" ${a.data()}");
      print(challengers);
    }
    newChallenge.defender =
        Challenger.fromMap(challengers[Random().nextInt(challengers.length)]);
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("Challengees")
        .doc(newChallenge.contender.uid +
            "vs" +
            newChallenge.defender.uid +
            "at" +
            TimeOfDay.now().toString());
    await documentReference.set({
      "contender": newChallenge.contender.uid,
      "defender": newChallenge.defender.uid,
      "isCompleted": false
    });
  }

  Future<List<ChallengeMatch>> getChallenges() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Challengees').get();
    List<ChallengeMatch> challenges = [];
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i];
      if (a["contender"].uid == Auth.user.uid ||
          a["defender"].uid == Auth.user.uid)
        challenges.add(ChallengeMatch.fromMap(a.data()));
      debugPrint(" ${a.data()}");
    }
    print(challenges);
    Challenger.challenges = challenges;
    return challenges;
  }
}
