class Register {
  int id;
  String cpf;
  String nome;
  String telefone;
  String dataNascimento;
  String email;
  String password;
  bool admin;
  int pontosFidelidade;
  String cnh;
  bool partner;

  Register(
      {this.id,
      this.cpf,
      this.nome,
      this.telefone,
      this.dataNascimento,
      this.email,
      this.password,
      this.admin,
      this.pontosFidelidade,
      this.cnh,
      this.partner});

  Register.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    cpf = json['cpf'].toString();
    nome = json['nome'].toString();
    telefone = json['telefone'].toString();
    dataNascimento = json['dataNascimento'].toString();
    email = json['email'].toString();
    password = json['password'].toString();
    admin = json['admin'] as bool;
    cnh = json['cnh'].toString();
    partner = json['isPartner'] as bool;
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
    data['pontosFidelidade'] = pontosFidelidade;
    data['cnh'] = cnh;
    data['partner'] = partner;
    return data;
  }
}
