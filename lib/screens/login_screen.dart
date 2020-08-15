import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:xs_progress_hud/xs_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> showHud() async {
    XsProgressHud.show(context);
    Future.delayed(Duration(milliseconds: 2000)).then((val) {
      XsProgressHud.hide();
      Navigator.pushNamed(context, "/homescreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEDF0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset("lib/assets/images/logo.png"),
              ),
              SizedBox(height: 15),
              Text("Signal",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                "A Live Bushfire Reporting App",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SignInButton(Buttons.AppleDark,
                  onPressed: () async => await showHud()),
              SignInButton(Buttons.Google, onPressed: () async => showHud()),
            ],
          ),
        ),
      ),
    );
  }
}
