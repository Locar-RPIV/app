import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/core/repository/vehicle/vehicle_repository.dart';

abstract class IHomeController{
  Future<List<VehicleSummary>> getVehiclesSummary();
}

class HomeController extends VehicleRepository implements IHomeController{
  @override
  Future<List<VehicleSummary>> getVehiclesSummary() {
    return getAvailableVehicles();
  }
}