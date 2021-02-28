import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'views/auth/login.dart';

void main() {
  Firebase.initializeApp();
  runApp(FoxtrotAlpha());
}

class FoxtrotAlpha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => LoginPage(),
      '/dashboard': (context) => LoginPage(),
    });
  }
}
