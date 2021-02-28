import 'package:myapp/model/challenger.dart';

class ChallengeMatch {
  Challenger contender, defender;
  bool isCompleted;
  ChallengeMatch({this.contender, this.defender, this.isCompleted});
  ChallengeMatch.fromMap(Map map)
      : this(
            contender: map['contender'],
            defender: map['defender'],
            isCompleted: map['isCompleted']);
}
