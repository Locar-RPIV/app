import 'package:app/app/model/register/register.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/view/components/default_alert_dialog.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/repository/register/register_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class IRegisterController {
  Future<void> registerClient({Register registerData});
}

class RegisterController implements IRegisterController {
  @override
  Future<void> registerClient({Register registerData, BuildContext context}) async {
    DefaultAlertDialog.showLoading(context: context, title: "Estamos cadastrando você na plataforma!");
    var response =
      await RegisterRepository().registerClient(register: registerData);
    Navigator.pop(context);
    if (response is Register) {
      await FlutterSecureStorage().write(key: "logged", value: registerData.email);
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
    if (response is BaseResponseAPI) {
      DefaultAlertDialog.show(
        context: context, 
        listButtons: [
          DefaultButton(title: "Voltar", onTap: (){
            Navigator.pop(context);
          },)
        ], 
        title: "Poxa...", description: "Ocorreu um erro ao realizar o seu cadastro!");
    }
  }
}
