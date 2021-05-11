class Branch {
  int id;
  String nome;
  int cnpj;

  Branch({this.id, this.nome, this.cnpj});

  Branch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    cnpj = json['cnpj'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['cnpj'] = this.cnpj;
    return data;
  }

  static List<Branch> fromArray(List<dynamic> list) =>
      list.map((json) => Branch.fromJson(json)).toList();
}
