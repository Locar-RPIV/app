import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(),
      body: Column(
        children: [
        ],
      ),
    );
  }
}