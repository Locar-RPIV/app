import 'package:app/core/router/router.dart';
import 'package:app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      initialRoute: "splash",
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
