import 'package:app/app/view/booking_confirmation/booking_confirmation_page.dart';
// import 'package:app/app/view/details/details_page.dart';
// import 'package:app/app/view/home/home_page.dart';
// import 'package:app/app/view/login/login_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => BookingConfirmationPage(),
  // "detailsPage": (BuildContext context) => DetailsPage(),
  // "login": (BuildContext context) => LoginPage(),
};
