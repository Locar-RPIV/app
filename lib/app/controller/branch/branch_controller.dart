import 'package:app/app/model/branch/branch.dart';
import 'package:app/core/repository/branch/branch_repository.dart';
abstract class IBranchController {
  Future<List<Branch>> getBranchs();
}

class BranchController implements IBranchController {
  final IBranchRepository repository;

  BranchController(this.repository);

  @override
  Future<List<Branch>> getBranchs() async {
    final dynamic response = await repository.getBranchs();
    if (response is List<Branch>) {
      return response;
    }
    return [];
  }
}
