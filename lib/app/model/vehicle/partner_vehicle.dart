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
      this.eDeParceiro);

  static List<PartnerVehicle> fromArray(List<dynamic> list) =>
      list.map((json) => PartnerVehicle.fromJson(json)).toList();

  PartnerVehicle.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    marca = map['marca'];
    modelo = map['modelo'];
    potencia = map['potencia'];
    placa = map['placa'];
    cor = map['cor'];
    ano = map['ano'];
    tipoCombustivel = map['tipoCombustivel'];
    numeroPortas = map['numeroPortas'];
    quilometragem = map['quilometragem'];
    renavan = map['renavan'];
    chassis = map['chassis'];
    valorLocacao = map['valorLocacao'];
    eDeParceiro = map['eDeParceiro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['marca'] = this.marca;
    data['modelo'] = this.modelo;
    data['potencia'] = this.potencia;
    data['placa'] = this.placa;
    data['cor'] = this.cor;
    data['ano'] = this.ano;
    data['tipoCombustivel'] = this.tipoCombustivel;
    data['numeroPortas'] = this.numeroPortas;
    data['quilometragem'] = this.quilometragem;
    data['renavan'] = this.renavan;
    data['chassis'] = this.chassis;
    data['valorLocacao'] = this.valorLocacao;
    data['eDeParceiro'] = this.eDeParceiro;
    return data;
  }
}
