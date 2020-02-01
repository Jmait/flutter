import 'package:flutter/material.dart';
import 'package:mac_power/reg_page.dart';
import 'Screens/welcomeScreen.dart';
//import 'second_intro.dart';
//import 'third_intro.dart';
import'Screens/homepage.dart';
import 'login_page.dart';
void main() {
  runApp(MacPower());



}
class MacPower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red.shade200,
        primaryColor: Colors.redAccent,


      ),
      initialRoute:  WelcomeScreen.id,

      routes: {
        HomePage.id:(context) => HomePage(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationPage.id: (context)=>RegistrationPage(),
        LoginPage.id:(context) => LoginPage(),
//        ThirdScreen.id:(context) => ThirdScreen(),


      },

    );
  }
}
