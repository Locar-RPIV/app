import 'dart:convert';

import 'package:app/app/model/login/auth.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/view/components/default_alert_dialog.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/repository/login/login_repository.dart';
import 'package:app/core/utils/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bcrypt/flutter_bcrypt.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ILoginController {
  bool isEmailValid(String email, {bool byTextField = true});
  Future<void> logout({BuildContext context});
  Future<void> auth(BuildContext context, {String email, String password});
  String errorText;
}

class LoginController implements ILoginController {
  @override
  String errorText;

  @override
  bool isEmailValid(String email, {bool byTextField = true}) {
    if (Validation.email(email: email)) {
      errorText = null;
      return true;
    }
    if (byTextField) {
      errorText = "Digite um email válido";
    }
    return false;
  }

  @override
  Future<void> logout({BuildContext context}) async {
    await FlutterSecureStorage().delete(key: "logged");
    Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false);
  }

  @override
  Future<void> auth(BuildContext context,
      {String email, String password}) async {
    DefaultAlertDialog.showLoading(context: context, title: "Estamos validadando suas credenciais!");
    var response = await LoginRepository().login(
        email: email,
        password: await FlutterBcrypt.hashPw(
            password: password, salt: r'$2b$06$C6UzMDN.H6dfI/f/IKxGhu'));
    Navigator.pop(context);
    if (response is Auth) {
      await FlutterSecureStorage().write(key: "logged", value: jsonEncode(response));
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
        title: "Poxa...", description: "Ocorreu um erro ao realizar seu login, verifique seu usuário e senha!");
    }
  }
}
