import 'package:app/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets\images\splashScreen01.png'),
                    fit: BoxFit.fitHeight)),
          ),
          new Center(
            child: Text(
              "LOCAR",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 40,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}