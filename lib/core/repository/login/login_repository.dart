import 'package:app/app/model/login/auth.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class ILoginRepository {
  Future<dynamic> login();
}

class LoginRepository implements ILoginRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> login() async {
    try {
      BaseResponseAPI response = await coreAPI.get(
        baseUrl: Endpoints.baseURL,
        endpoint: Endpoints.login,
      );
      if (response.statusCode == 200) {
        return Auth.fromArray(response.response);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(
          response: null, statusCode: 500, statusMessage: "error");
    }
  }
}
