import 'package:app/app/view/details/details_page.dart';
import 'package:app/app/view/home/home_page.dart';
import 'package:app/app/view/login/login_page.dart';
import 'package:app/app/view/partner/register_vehicle/register_vehicle_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "details": (BuildContext context) => DetailsPage(),
  "login": (BuildContext context) => LoginPage(),
  "partner/registerVehicle": (BuildContext context) => RegisterVehiclePage(),
};
