import 'package:app/app/model/register/register.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class IRegisterRepository {
  Future<dynamic> registerClient({Register register});
}

class RegisterRepository implements IRegisterRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> registerClient({Register register}) async {
    var body = {
      "cpf": register.cpf,
      "nome": register.nome,
      "telefone": register.telefone,
      "dataNascimento": register.dataNascimento,
      "email": register.email,
      "password": register.password,
      "admin": false,
      "cnh": register.cnh,
      "isPartner": false,
      "partner": false
    };
    print(body);
    BaseResponseAPI response = await coreAPI.post(
        body: body, baseUrl: Endpoints.baseURL, endpoint: Endpoints.client);

    if (response.statusCode == 200) {
      return Register.fromJson(response.response);
    }

    return response;
  }
  
}
