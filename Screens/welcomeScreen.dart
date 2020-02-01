import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mac_power/const.dart';
import 'homepage.dart';
import 'package:mac_power/login_page.dart';
import 'package:mac_power/reg_page.dart';
class WelcomeScreen extends StatefulWidget {
  static String id = 'welcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'MacPower ',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.red,
                shadowColor: Colors.blueGrey,
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPage.id);
                  },
                  child: Text(
                    'Log In',
                    style: kproductTextStyle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.red,
                shadowColor: Colors.blueGrey,
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationPage.id);
                  },
                  child: Text(
                    'Register',
                    style: kproductTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
