import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/core/utils/date_parser.dart';

class Reservation {
  int id;
  Auth user;
  VehicleSummary vehicle;
  DateTime dataRetirada;

  Reservation({this.id, this.user, this.vehicle, this.dataRetirada});

  Reservation.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    user = json['user'] != null ? Auth.fromJson(json['user'] as Map<String, dynamic>) : null;
    vehicle = json['veiculo'] != null
        ? VehicleSummary.fromJson(json['veiculo'] as Map<String, dynamic>)
        : null;
    dataRetirada = DateParser.getDateTime(json['dataRetirada'].toString());
  }

  static List<Reservation> fromArray(List<dynamic> list) =>
      list.map((json) => Reservation.fromJson(json as Map<String, dynamic>)).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = {"id": user.id, "cpf": user.cpf};
    }
    data['veiculo'] = this.vehicle.toMap();
    data['dataRetirada'] = DateParser.getDateString(this.dataRetirada);
    return data;
  }
}
