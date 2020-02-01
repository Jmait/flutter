import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static  String id ='LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(),
            TextField(),
            Material(
              child: MaterialButton(
                  onPressed: (){},
                child: Text('Log In'),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
