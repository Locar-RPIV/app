class Branch {
  int id;
  String nome;
  int cnpj;

  Branch({this.id, this.nome, this.cnpj});

  Branch.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    nome = json['nome'].toString();
    cnpj = json['cnpj'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['cnpj'] = cnpj;
    return data;
  }

  static List<Branch> fromArray(List<dynamic> list) =>
      list.map((json) => Branch.fromJson(json as Map<String, dynamic>)).toList();
}
