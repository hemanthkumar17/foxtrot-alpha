import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  Future<User> loginFirebase(Map loginInfo) async {
    final String _email = loginInfo['email'];
    final String _password = loginInfo['password'];

    FirebaseAuth _auth = FirebaseAuth.instance;
    User user = (await _auth.signInWithEmailAndPassword(
            email: _email, password: _password))
        .user;
    return user;
  }
}
