import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/remote/base_response.dart';
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
    dynamic response =
        await RegisterVehicleRepository().registerVehicle(vehicle: vehicle);
    if (response is VehicleSummary) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                RegisterVehiclesDetailsPage(vehicleSummary: response)),
      );
    }
    if (response is BaseResponseAPI) {
      print("Status code ${response.statusCode}");
    }
  }
}
