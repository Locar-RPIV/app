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
      final body = {"email": email, "password": password};
      final BaseResponseAPI response = await coreAPI.post(
          body: body, baseUrl: Endpoints.baseURL, endpoint: Endpoints.login);

      if (response.statusCode == 200) {
        return Auth.fromJson(response.response as Map<String, dynamic>);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(statusCode: 500, statusMessage: "error");
    }
  }
}
