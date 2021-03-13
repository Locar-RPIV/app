import 'package:app/app/model/login/auth.dart';
import 'package:app/core/repository/login/login_repository.dart';
import 'package:app/core/utils/validation.dart';
import 'package:flutter/cupertino.dart';

abstract class ILoginController {
  bool isEmailValid(String email, {bool byTextField = true});
  Future<void> logout({BuildContext context});
  Future<dynamic> login({String email, String password});
  Future<List<Auth>> getAuth();
  String errorText;
}

class LoginController extends LoginRepository implements ILoginController {
  @override
  String errorText;
  Future<List<Auth>> getAuth() async {
    var response = await login();
    if (response is List<Auth>) {
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
      Future<List<Auth>> getAuth() {
        // TODO: implement geAuth
        throw UnimplementedError();
      }

      return response;
    }
    return [];
  }

  @override
  Future<List<Auth>> geAuth() {
    // TODO: implement geAuth
    throw UnimplementedError();
  }

  @override
  bool isEmailValid(String email, {bool byTextField = true}) {
    // TODO: implement isEmailValid
    throw UnimplementedError();
  }

  @override
  Future<void> logout({BuildContext context}) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
