import 'package:app/utils/router/router.dart';
import 'package:app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      initialRoute: "/",
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
