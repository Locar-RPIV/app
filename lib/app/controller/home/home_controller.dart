import 'dart:async';
import 'dart:convert';

import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/core/repository/vehicle/vehicle_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class IHomeController {
  Future<List<VehicleSummary>> getVehiclesSummary();
  FutureOr<Auth> getUser();
}

class HomeController extends VehicleRepository implements IHomeController {
  Auth authUser;

  @override
  Future<List<VehicleSummary>> getVehiclesSummary() async {
    var response = await getAvailableVehicles();
    if (response is List<VehicleSummary>) {
      return response;
    }
    return [];
  }

  @override
  FutureOr<Auth> getUser() async {
    if (authUser != null) {
      return authUser;
    }
    String authString = await FlutterSecureStorage().read(key: "logged");
    authUser = Auth.fromJson(jsonDecode(authString));
    return authUser;
  }
}
