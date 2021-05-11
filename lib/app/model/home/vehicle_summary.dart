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
      list.map((json) => VehicleSummary.fromJson(json)).toList();

  VehicleSummary.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    marca = json['marca'].toString();
    modelo = json['modelo'];
    potencia = json['potencia'].toString();
    placa = json['placa'];
    status = json['status'];
    cor = json['cor'];
    ano = json['ano'];
    tipoCombustivel = json['tipoCombustivel'];
    numeroPortas = json['numeroPortas'];
    quilometragem = json['quilometragem'];
    renavan = json['renavan'];
    chassi = json['chassi'];
    valorLocacao = json['valorLocacao'];
    carroParceiro = json['carroParceiro'];
    cpfParceiro = json['cpfParceiro'];
    filial = json['filial'];
    imageUrl = json['imageUrl'] ?? '';

    type = json['carroParceiro'] ? VehicleType.particular : VehicleType.rental;
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
