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

  Future<void> getVehiculeDetails(BuildContext context,
      {String marca,
      String modelo,
      int potencia,
      int ano,
      int quilometragem,
      double valorLocacao}) async {
    var response = await VehicleRepository().getAvailableVehicles();
    if (response is partnerVehicle) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
    if (response is BaseResponseAPI) {
      print("Erro: ${response.statusCode}");
    }
  }

  Future<void> postPartnerVehicle(BuildContext context,
      {int id,
      String marca,
      String modelo,
      int potencia,
      String placa,
      String cor,
      int ano,
      int tipoCombustivel,
      int numeroPortas,
      int quilometragem,
      int renavan,
      String chassis,
      double valorLocacao,
      bool eDeParceiro}) async {
    var cor2 = cor;
    var response = await VehicleRepository().postVehicles(
        id,
        marca,
        modelo,
        potencia,
        placa,
        cor,
        ano,
        tipoCombustivel,
        numeroPortas,
        quilometragem,
        renavan,
        chassis,
        valorLocacao,
        eDeParceiro);
    if (response is partnerVehicle) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
    if (response is BaseResponseAPI) {
      print("Erro ${response.response}");
    }
  }

  @override
  Future<void> vehiculePartner(BuildContext context,
      {String marca,
      String modelo,
      int ano,
      int quilometragem,
      double valorLocacao}) {
    // TODO: implement vehiculePartner
    throw UnimplementedError();
  }
}