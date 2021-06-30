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
    final response = await getAvailableVehicles();
    if (response is List<VehicleSummary>) {
      return response;
    }
    return [];
  }

  @override
  Future<Auth> getUser() async {
    if (authUser != null) {
      return authUser;
    }
    final String authString =
        await const FlutterSecureStorage().read(key: "logged");
    authUser = Auth.fromJson(jsonDecode(authString) as Map<String, dynamic>);
    return Auth.fromJson(jsonDecode(authString) as Map<String, dynamic>);
  }
}
