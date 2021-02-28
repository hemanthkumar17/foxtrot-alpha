import 'package:myapp/model/challenge_match.dart';

class Challenger {
  final String challengerName;
  final String uid;
  final int points;
  static List<ChallengeMatch> challenges;
  Challenger({this.challengerName, this.uid, this.points});
  Challenger.fromMap(Map map)
      : this(
            challengerName: map['userName'],
            uid: map['uid'],
            points: map['points']);
  Map<String, dynamic> asMap() =>
      {'userName': this.challengerName, 'uid': this.uid, 'points': this.points};
}
