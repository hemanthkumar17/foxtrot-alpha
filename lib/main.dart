import 'package:flutter/material.dart';

import 'views/auth/login.dart';
import 'widgets/app_bar.dart';

void main() {
  runApp(FoxtrotAlpha());
}

class FoxtrotAlpha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => LoginPage(),
    });
  }
}
