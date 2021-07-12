import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/view/components/default_alert_dialog.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/partner/register_vehicle/register_vehicles_details_page.dart';
import 'package:app/core/repository/partner/vehicle/register_vehicle_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IRegisterVehicleController {
  Future<void> registerVehicle(BuildContext context, {VehicleSummary vehicle});
}

class RegisterVehicleController implements IRegisterVehicleController {
  @override
  Future<void> registerVehicle(BuildContext context,
      {VehicleSummary vehicle}) async {
    DefaultAlertDialog.showLoading(
        context: context, title: "Estamos cadastrando seu veículo!");
    final dynamic response =
        await RegisterVehicleRepository().registerVehicle(vehicle: vehicle);
    Navigator.pop(context);
    if (response is VehicleSummary) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                RegisterVehiclesDetailsPage(vehicleSummary: response)),
      );
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
              "Ocorreu um erro ao cadastrar o seu veículo, revise os dados e tente novamente! Caso o erro pessista entre em contato com suporte.");
    }
  }
}
