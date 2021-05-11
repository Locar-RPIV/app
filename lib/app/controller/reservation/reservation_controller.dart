import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/app/view/components/default_alert_dialog.dart';
import 'package:app/app/view/components/default_button.dart';
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
      VehicleSummary vehicleSummary,
      Branch branch}) async {
    DefaultAlertDialog.showLoading(
        context: context, title: "Estamos cadastrando seu veículo!");
    dynamic response =
        await ReservationRepository().createReservation(reservation);
    Navigator.pop(context);
    if (response is Reservation) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => ReservationConfirmationPage(
                  location: location,
                  vehicleSummary: vehicleSummary,
                  reservation: response,
                  branch: branch)),
          (_) => false);
    }
    if (response is BaseResponseAPI) {
      DefaultAlertDialog.show(
          context: context,
          listButtons: [
            DefaultButton(
              title: "Voltar",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
          title: "Poxa...",
          description:
              "Ocorreu um erro ao realizar a sua reserva, revise os dados e tente novamente! Caso o erro pessista entre em contato com suporte.");
    }
  }
}
