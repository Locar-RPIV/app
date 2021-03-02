import 'package:app/app/view/reservation/details_page.dart';
import 'package:app/app/view/home/home_page.dart';
import 'package:app/app/view/login/login_page.dart';
import 'package:app/app/view/partner/register_vehicle/register_vehicle_page.dart';
import 'package:app/app/view/reservation/reservation_confirmation_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "login": (BuildContext context) => LoginPage(),
  "partner/registerVehicle": (BuildContext context) => RegisterVehiclePage(),
  "reservation/details": (BuildContext context) => DetailsPage(),
  "reservation/confirmation": (BuildContext context) => ReservationConfirmationPage(),
};
