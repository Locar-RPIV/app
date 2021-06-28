class PartnerVehicle {
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
  String chassis;
  double valorLocacao;
  bool eDeParceiro;

  PartnerVehicle(
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
    this.chassis,
    this.valorLocacao,
    {this.eDeParceiro}
  );

  static List<PartnerVehicle> fromArray(List<dynamic> list) =>
      list.map((json) => PartnerVehicle.fromJson(json as Map<String, dynamic>)).toList();

  PartnerVehicle.fromJson(Map<String, dynamic> map) {
    id = map['id'] as int;
    marca = map['marca'].toString();
    modelo = map['modelo'].toString();
    potencia = map['potencia'] as int;
    placa = map['placa'].toString();
    cor = map['cor'].toString();
    ano = map['ano'] as int;
    tipoCombustivel = map['tipoCombustivel'] as int;
    numeroPortas = map['numeroPortas'] as int;
    quilometragem = map['quilometragem'] as int;
    renavan = map['renavan'] as int;
    chassis = map['chassis'].toString();
    valorLocacao = double.parse(map['valorLocacao'].toString());
    eDeParceiro = map['eDeParceiro'] as bool;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['marca'] = marca;
    data['modelo'] = modelo;
    data['potencia'] = potencia;
    data['placa'] = placa;
    data['cor'] = cor;
    data['ano'] = ano;
    data['tipoCombustivel'] = tipoCombustivel;
    data['numeroPortas'] = numeroPortas;
    data['quilometragem'] = quilometragem;
    data['renavan'] = renavan;
    data['chassis'] = chassis;
    data['valorLocacao'] = valorLocacao;
    data['eDeParceiro'] = eDeParceiro;
    return data;
  }
}
