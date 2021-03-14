import 'package:app/app/model/login/auth.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/repository/login/login_repository.dart';
import 'package:app/core/utils/validation.dart';
import 'package:flutter/cupertino.dart';

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
    Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false);
  }

  @override
  Future<void> auth(BuildContext context,
      {String email, String password}) async {
    var response =
        await LoginRepository().login(email: email, password: password);
    if (response is Auth) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
    if (response is BaseResponseAPI) {
      print("ERRO: ${response.statusCode}");
    }
  }
}
