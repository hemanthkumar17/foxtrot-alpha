import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/api/auth.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Foxtrot Alpha",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 12),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 50)),
                    ButtonTheme(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                  image: AssetImage("images/google_logo.png"),
                                  height: 100),
                            ),
                            onPressed: () async {
                              await Auth().loginFirebase();
                              Navigator.pushReplacementNamed(
                                  context, '/dashboard');
                            }))
                  ]),
            )));
  }
}
