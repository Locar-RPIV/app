import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/app/view/components/default_alert_dialog.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/repository/reservation/reservation_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IHistoricController {
  Future<List<Reservation>> getHistoric(BuildContext context, String cpf);
}

class HistoricController implements IHistoricController {
  @override
  Future<List<Reservation>> getHistoric(
      BuildContext context, String cpf) async {
    Future.delayed(
        const Duration(),
        () => DefaultAlertDialog.showLoading(
            context: context, title: "Buscando suas reservas!"));
    final dynamic response =
        await ReservationRepository().getReservationsByCPF(cpf);
    Navigator.pop(context);
    if (response is List<Reservation>) {
      return response;
    }
    if (response is BaseResponseAPI) {
      DefaultAlertDialog.show(
          context: context,
          listButtons: [
            DefaultButton(
              title: "Voltar",
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            )
          ],
          title: "Poxa...",
          description: "Ocorreu um erro ao buscar suas reservas.");
    }
    return [];
  }
}
