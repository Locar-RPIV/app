abstract class ILoginController{
  bool isEmailValid();
  bool isPasswordValid();
}

class LoginController implements ILoginController {
  @override
  bool isEmailValid() {
    // TODO: implement isEmailValid
    throw UnimplementedError();
  }

  @override
  bool isPasswordValid() {
    // TODO: implement isPasswordValid
    throw UnimplementedError();
  }
}