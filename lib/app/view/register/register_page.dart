import 'package:app/app/controller/register/register_controller.dart';
import 'package:app/app/model/register/register.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/default_text_form_field.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var controller = RegisterController();
  var cpfTextController = TextEditingController();
  var nomeTextController = TextEditingController();
  var telefoneTextController = TextEditingController();
  var dataNascimentoTextController = TextEditingController();
  var cnhTextController = TextEditingController();
  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  int cpf = 0;
  int cnh = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 49, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DADOS PESSOAIS",
              style: TextStyle(color: primaryColor, fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(top: 39),
              child: DefaultTextFormField(
                hintText: "Nome",
                controller: nomeTextController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      hintText: "CPF",
                      controller: cpfTextController,
                      type: TextInputType.number,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Expanded(
                    child: DefaultTextFormField(
                      hintText: "Nascimento",
                      controller: dataNascimentoTextController,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      hintText: "Telefone",
                      type: TextInputType.number,
                      controller: telefoneTextController,
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Expanded(
                    child: DefaultTextFormField(
                      hintText: "CNH",
                      type: TextInputType.number,
                      controller: cnhTextController,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "DADOS DE ACESSO",
                style: TextStyle(color: primaryColor, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35),
              child: DefaultTextFormField(
                hintText: "USUÁRIO",
                controller: emailTextController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 26),
              child: DefaultTextFormField(
                hintText: "SENHA",
                isPassword: true,
                controller: passwordTextController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: DefaultButton(
                title: "CADASTRAR",
                onTap: () {
                  controller.registerClient(
                      context: context,
                      registerData: Register(
                        admin: false,
                        partner: false,
                        cnh: int.parse(cnhTextController.text.trim()),
                        cpf: int.parse(cpfTextController.text.trim()),
                        dataNascimento: dataNascimentoTextController.text,
                        email: emailTextController.text,
                        password: passwordTextController.text,
                        nome: nomeTextController.text,
                        telefone: telefoneTextController.text,
                      ));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text.rich(
                    TextSpan(
                        text: "ou ",
                        style: TextStyle(
                            color: grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                        children: [
                          TextSpan(
                              text: "faça login ",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: "aqui",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100))
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
