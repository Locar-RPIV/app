import 'package:app/app/model/login/auth.dart';
import 'package:app/core/utils/date_parser.dart';

class Reservation {
  int id;
  Auth user;
  String placa;
  DateTime dataRetirada;

  Reservation({this.id, this.user, this.placa, this.dataRetirada});

  Reservation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? new Auth.fromJson(json['user']) : null;
    placa = json['placa'];
    dataRetirada = DateParser.getDateTime(json['dataRetirada']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = {"cpf": user.cpf};
    }
    data['placa'] = this.placa;
    data['dataRetirada'] = DateParser.getDateString(this.dataRetirada);
    return data;
  }
}
