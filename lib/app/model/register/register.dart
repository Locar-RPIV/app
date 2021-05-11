class Register {
  int id;
  int cpf;
  String nome;
  String telefone;
  String dataNascimento;
  String email;
  String password;
  bool admin;
  int pontosFidelidade;
  int cnh;
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
    id = json['id'];
    cpf = json['cpf'];
    nome = json['nome'];
    telefone = json['telefone'];
    dataNascimento = json['dataNascimento'];
    email = json['email'];
    password = json['password'];
    admin = json['admin'];
    pontosFidelidade = json['pontosFidelidade'];
    cnh = json['cnh'];
    partner = json['partner'];
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
    data['pontosFidelidade'] = this.pontosFidelidade;
    data['cnh'] = this.cnh;
    data['partner'] = this.partner;
    return data;
  }
}
