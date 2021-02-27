class Challenger {
  final String challengerName;
  final String email;
  final int points;

  Challenger({this.challengerName, this.email, this.points});
  Challenger.fromMap(Map map)
      : this(
            challengerName: map['ChallengerName'],
            email: map['email'],
            points: map['points']);
  Map<String, dynamic> asMap() => {
        'ChallengerName': this.challengerName,
        'email': this.email,
        'points': this.points
      };
}
