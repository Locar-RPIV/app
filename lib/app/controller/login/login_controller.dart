import 'package:app/app/model/login/auth.dart';
import 'package:app/core/repository/login/login_repository.dart';
import 'package:app/core/utils/validation.dart';
import 'package:flutter/cupertino.dart';

abstract class ILoginController {
  bool isEmailValid(String email, {bool byTextField = true});
  Future<void> logout({BuildContext context});
  Future<dynamic> login({String email, String password});
  Future<List<Auth>> geAuth();
  String errorText;
}

class LoginController extends LoginRepository implements ILoginController {
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
