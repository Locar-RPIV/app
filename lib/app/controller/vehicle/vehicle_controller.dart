import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/model/vehicle/partner_vehicle.dart';
import 'package:app/core/repository/vehicle/vehicle_repository.dart';
import 'package:flutter/cupertino.dart';

abstract class IVehicleController {
  Future<void> vehiculePartner(BuildContext context,
      {String marca,
      String modelo,
      int ano,
      int quilometragem,
      double valorLocacao});
  String errorText;
}

class VehicleController implements IVehicleController {
  @override
  String errorText;

  @override
  Future<void> vehiculePartner(BuildContext context,
      {String marca,
      String modelo,
      int ano,
      int quilometragem,
      double valorLocacao}) async {
    var response = await VehicleRepository()
        .postVehicles(marca, modelo, ano, quilometragem, valorLocacao);
    if (response is partnerVehicle) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
    if (response is BaseResponseAPI) {
      print("Erro: ${response.statusCode}");
    }
  }
}
