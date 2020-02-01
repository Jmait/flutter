import 'package:flutter/material.dart';
import 'const.dart';

class BottomNavigation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.red,
      items: [

        BottomNavigationBarItem(
          icon: Icon(Icons.home,
            color: Colors.white,

          ),
          title: Text('Home', style: kbottomNavigationText),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,
              color: Colors.white,

            ),
            title: Text('Profile', style: kbottomNavigationText)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
              color: Colors.white,

            ),
            title: Text('Cart', style: kbottomNavigationText),

        ),


      ],
    );
  }
}