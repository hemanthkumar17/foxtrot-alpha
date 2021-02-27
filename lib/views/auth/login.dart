import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/api/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget emailField, passwordField;
  Widget submitButton, registerButton, buttons;

  _LoginPageState() {
    emailField = TextFormField(
      autofocus: true,
      controller: emailController,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
    );
    passwordField = TextFormField(
      autofocus: true,
      controller: passwordController,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: "Password"),
    );
    submitButton = ElevatedButton(
      onPressed: () {
        // Auth().loginFirebase({
        //   'email': emailController.text,
        //   'password': passwordController.text
        // });
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => Dashboard()),
        // );
      },
      child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 40,
          child: Text("Submit")),
    );
    registerButton = ElevatedButton(
      onPressed: () {},
      child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 100,
          child: Text("Register")),
    );
    buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [submitButton, registerButton],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Foxtrot-Alpha',
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 30)),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
        Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 4 - 100),
            child: Text("Login",
                style: GoogleFonts.roboto(
                    fontSize: 40, fontWeight: FontWeight.bold))),
        Padding(
          padding: EdgeInsetsDirectional.only(
            top: MediaQuery.of(context).size.height / 4 - 100,
          ),
          child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [emailField, passwordField, buttons],
              )),
        )
      ],
    ));
  }
}
