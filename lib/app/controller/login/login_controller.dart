import 'package:app/core/utils/validation.dart';
import 'package:flutter/cupertino.dart';

abstract class ILoginController {
  bool isEmailValid(String email, {bool byTextField = true});
  Future<void> logout({BuildContext context});
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
}
