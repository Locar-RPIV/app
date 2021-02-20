import 'package:app/core/utils/validation.dart';

abstract class ILoginController {
  bool isEmailValid(String email, {bool byTextField = true});
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
}
