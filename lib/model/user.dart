class User {
  final String userName;
  final String email;
  final int points;

  User({this.userName, this.email, this.points});
  User.fromMap(Map map)
      : this(
            userName: map['userName'],
            email: map['email'],
            points: map['points']);
  Map<String, dynamic> asMap() =>
      {'userName': this.userName, 'email': this.email, 'points': this.points};
}
