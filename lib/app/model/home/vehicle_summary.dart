import 'package:app/core/enum/Vehicle/vehicle_type.dart';

class VehicleSummary {
  String imageUrl;
  String name;
  double value;
  VehicleType type;

  VehicleSummary({
    this.imageUrl,
    this.name,
    this.value,
    this.type,
  });
}
