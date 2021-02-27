import 'package:flutter/material.dart';
import 'package:myapp/views/dashboard.dart';

import 'views/auth/login.dart';

void main() {
  runApp(FoxtrotAlpha());
}

class FoxtrotAlpha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => LoginPage(),
      '/dashboard': (context) => Dashboard(),
    });
  }
}
