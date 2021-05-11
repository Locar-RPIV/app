import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class IBranchRepository {
  Future<dynamic> getBranchs();
}

class BranchRepository implements IBranchRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> getBranchs() async {
    BaseResponseAPI response = await coreAPI.get(
      baseUrl: Endpoints.baseURL,
      endpoint: Endpoints.getBranchs,
    );
    if (response.statusCode == 200) {
      return Branch.fromArray(response.response);
    }
    return response;
  }
}
