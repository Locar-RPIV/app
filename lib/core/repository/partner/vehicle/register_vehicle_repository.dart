import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class IRegisterVehicleRepository {
  Future<dynamic> registerVehicle({VehicleSummary vehicle});
}

class RegisterVehicleRepository implements IRegisterVehicleRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> registerVehicle({VehicleSummary vehicle}) async {
    try {
      BaseResponseAPI response = await coreAPI.post(
          baseUrl: Endpoints.baseURL,
          endpoint: Endpoints.automobile,
          body: vehicle.toMap());
      if (response.statusCode == 200) {
        return VehicleSummary.fromJson(response.response);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(
          response: null, statusCode: 500, statusMessage: "error");
    }
  }
}
