import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottom_navigation.dart';
import '../const.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigation(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('MacPower Energy'),
        ),
        body: ListView(
          children: <Widget>[
            ProductCatalogue(
              image: AssetImage('images/macpower1.jpeg'),
              getdetails: () {},
              placeorder: () {},
            ),
            ProductCatalogue(
              image: AssetImage('images/macpower2.jpg'),
              getdetails: () {},
              placeorder: () {},
            ),
            ProductCatalogue(
              image: AssetImage('images/mac5.jpeg'),
              getdetails: () {},
              placeorder: () {},
            ),
            ProductCatalogue(
              image: AssetImage('images/macpower2.jpg'),
              getdetails: () {},
              placeorder: () {},
            ),
            ProductCatalogue(
              image: AssetImage('images/mac5.jpeg'),
              getdetails: () {},
              placeorder: () {},
            ),
            ProductCatalogue(
              image: AssetImage('images/macpower2.jpg'),
              getdetails: () {},
              placeorder: () {},
            ),
//
//
          ],
        ),
      ),
    );
  }
}

class ProductCatalogue extends StatelessWidget {
  ProductCatalogue(
      {@required this.image,
      @required this.getdetails,
      @required this.placeorder});
  final image;
  final Function getdetails;
  final Function placeorder;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          width: 230.0,
          height: 500.0,
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: image,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red,
                  child: MaterialButton(
                    onPressed: getdetails,
                    child: Text(
                      'Get Details',
                      style: kproductTextStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40.0),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red,
                  child: MaterialButton(
                    onPressed: placeorder,
                    child: Text(
                      'Place Order',
                      style: kproductTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
