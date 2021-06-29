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
      final BaseResponseAPI response = await coreAPI.get(
        baseUrl: Endpoints.baseURL,
        endpoint: Endpoints.automobile,
      );
      if (response.statusCode == 200) {
        return VehicleSummary.fromArray(response.response as List<dynamic>);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(
          statusCode: 500, statusMessage: "error");
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
      {bool eDeParceiro}) async {
    try {
      final body = {
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
      final BaseResponseAPI response = await coreAPI.post(
          body: body,
          baseUrl: Endpoints.baseURL,
          endpoint: Endpoints.getAutomobile);
      if (response.statusCode == 200) {
        return PartnerVehicle.fromJson(response.response as Map<String, dynamic>);
      }
      return response;
    } catch (e) {
      return BaseResponseAPI(
          statusCode: 500, statusMessage: "error");
    }
  }
}
