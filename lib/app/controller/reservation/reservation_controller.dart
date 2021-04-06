import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/app/view/reservation/reservation_confirmation_page.dart';

import 'package:app/core/repository/reservation/reservation_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IReservationController {
  Future<void> createReservation(BuildContext context,
      {Reservation reservation});
}

class ReservationController implements IReservationController {
  @override
  Future<void> createReservation(BuildContext context,
      {Reservation reservation,
      String location,
      VehicleSummary vehicleSummary}) async {
    dynamic response =
        await ReservationRepository().createReservation(reservation);
    if (response is Reservation) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => ReservationConfirmationPage(
                    location: location,
                    vehicleSummary: vehicleSummary,
                    reservation: response,
                  )),
          (_) => false);
      print("Reserva efetuada");
    }
    if (response is BaseResponseAPI) {
      print("Status code ${response.statusCode}");
    }
  }
}
