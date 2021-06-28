import 'dart:convert';

import 'package:app/core/enum/Vehicle/vehicle_type.dart';

import '../../../core/enum/Vehicle/vehicle_type.dart';

class VehicleSummary {
  int id;
  String marca;
  String modelo;
  String potencia;
  String placa;
  String cor;
  int ano;
  int tipoCombustivel;
  int numeroPortas;
  int quilometragem;
  int renavan;
  String chassi;
  double valorLocacao;
  bool carroParceiro;
  String cpfParceiro;
  int filial;
  String imageUrl;
  String status;

  VehicleType type;
  VehicleSummary({
    this.id,
    this.marca,
    this.modelo,
    this.potencia,
    this.placa,
    this.cor,
    this.ano,
    this.tipoCombustivel,
    this.status,
    this.numeroPortas,
    this.quilometragem,
    this.renavan,
    this.chassi,
    this.valorLocacao,
    this.carroParceiro,
    this.cpfParceiro,
    this.filial,
    this.imageUrl,
    this.type,
  });

  static List<VehicleSummary> fromArray(List<dynamic> list) =>
      list.map((json) => VehicleSummary.fromJson(json as Map<String, dynamic>)).toList();

  VehicleSummary.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    marca = json['marca'].toString();
    modelo = json['modelo'].toString();
    potencia = json['potencia'].toString();
    placa = json['placa'].toString();
    status = json['status'].toString();
    cor = json['cor'].toString();
    ano = json['ano'] as int;
    tipoCombustivel = json['tipoCombustivel'] as int;
    numeroPortas = json['numeroPortas'] as int;
    quilometragem = json['quilometragem'] as int;
    renavan = json['renavan'] as int;
    chassi = json['chassi'].toString();
    valorLocacao = double.parse(json['valorLocacao'].toString());
    carroParceiro = json['carroParceiro'] as bool;
    cpfParceiro = json['cpfParceiro'].toString();
    filial = json['filial'] as int;
    imageUrl = json['imageUrl'].toString() ?? '';

    type = json['carroParceiro'] as bool ? VehicleType.particular : VehicleType.rental;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'marca': marca,
      'modelo': modelo,
      'potencia': potencia,
      'placa': placa,
      'status': status,
      'cor': cor,
      'ano': ano,
      'tipoCombustivel': tipoCombustivel,
      'numeroPortas': numeroPortas,
      'quilometragem': quilometragem,
      'renavan': renavan,
      'chassi': chassi,
      'valorLocacao': valorLocacao,
      'carroParceiro': carroParceiro,
      'cpfParceiro': cpfParceiro,
      'filial': filial,
      'imageUrl': imageUrl,
    };
  }

  String toJson() => json.encode(toMap());
}
