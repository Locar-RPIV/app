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
      list.map((json) => Auth.fromJson(json)).toList();

  Auth.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    cpf = map['cpf'];
    nome = map['nome'];
    telefone = map['telefone'];
    dataNascimento = map['dataNascimento'];
    email = map['email'];
    password = map['password'];
    admin = map['admin'];
    partner = map['partner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cpf'] = this.cpf;
    data['nome'] = this.nome;
    data['telefone'] = this.telefone;
    data['dataNascimento'] = this.dataNascimento;
    data['email'] = this.email;
    data['password'] = this.password;
    data['admin'] = this.admin;
    data['partner'] = this.partner;
    return data;
  }
}
