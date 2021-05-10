import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/model/vehicle/partner_vehicle.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class IVehicleRepository {
  Future<dynamic> getAvailableVehicles();
}

class VehicleRepository implements IVehicleRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> getAvailableVehicles() async {
    try {
      BaseResponseAPI response = await coreAPI.get(
        baseUrl: Endpoints.baseURL,
        endpoint: Endpoints.automobile,
      );
      if (response.statusCode == 200) {
        return VehicleSummary.fromArray(response.response);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(
          response: null, statusCode: 500, statusMessage: "error");
    }
  }

  Future<dynamic> postVehicles(
      int id,
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
      bool eDeParceiro) async {
    try {
      var body = {
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
        eDeParceiro
      };
      BaseResponseAPI response = await coreAPI.post(
          body: body,
          baseUrl: Endpoints.baseURL,
          endpoint: Endpoints.getAutomobile);
      if (response.statusCode == 200) {
        return partnerVehicle.fromJson(response.response);
      }
      return response;
    } catch (e) {
      return BaseResponseAPI(
          response: null, statusCode: 500, statusMessage: "error");
    }
  }
}
