import 'package:app/app/model/login/auth.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class ILoginRepository {
  Future<dynamic> login({String email, String password});
}

class LoginRepository implements ILoginRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> login({String email, String password}) async {
    try {
      var body = {"email": "matheus@gmail.com", "password": "1234"};
      BaseResponseAPI response = await coreAPI.post(
          body: body, baseUrl: Endpoints.baseURL, endpoint: Endpoints.login);

      if (response.statusCode == 200) {
        return Auth.fromJson(response.response);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(
          response: null, statusCode: 500, statusMessage: "error");
    }
  }
}
