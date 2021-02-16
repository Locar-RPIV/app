import 'package:app/app/view/details/details_page.dart';
import 'package:app/app/view/home/home_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "detailsPage": (BuildContext context) => DetailsPage(),
};
