class Auth {
  int id;
  String cpf;
  String nome;
  String telefone;
  String dataNascimento;
  String email;
  String password;
  bool admin;
  bool partner;

  Auth(
      {this.id,
      this.cpf,
      this.nome,
      this.telefone,
      this.dataNascimento,
      this.email,
      this.password,
      this.partner,
      this.admin});

  static List<Auth> fromArray(List<dynamic> list) =>
      list.map((json) => Auth.fromJson(json as Map<String, dynamic>)).toList();

  Auth.fromJson(Map<String, dynamic> map) {
    id = map['id'] as int;
    cpf = map['cpf'].toString();
    nome = map['nome'].toString();
    telefone = map['telefone'].toString();
    dataNascimento = map['dataNascimento'].toString();
    email = map['email'].toString();
    password = map['password'].toString();
    admin = map['admin'] as bool;
    partner = map['partner'] as bool;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cpf'] = cpf;
    data['nome'] = nome;
    data['telefone'] = telefone;
    data['dataNascimento'] = dataNascimento;
    data['email'] = email;
    data['password'] = password;
    data['admin'] = admin;
    data['partner'] = partner;
    return data;
  }
}
