import 'dart:convert';

import 'package:app/core/enum/Vehicle/vehicle_type.dart';

import '../../../core/enum/Vehicle/vehicle_type.dart';

class VehicleSummary {
  int id;
  String marca;
  String modelo;
  int potencia;
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
  int cpfParceiro;
  int filial;
  String imageUrl;

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
    id = json['id'];
    marca = json['marca'];
    modelo = json['modelo'];
    potencia = json['potencia'];
    placa = json['placa'];
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
    imageUrl = json['imageUrl'];

    type = json['carroParceiro'] ? VehicleType.particular : VehicleType.rental;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'marca': marca,
      'modelo': modelo,
      'potencia': potencia,
      'placa': placa,
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
