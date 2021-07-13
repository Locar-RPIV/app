import 'package:app/app/controller/branch/branch_controller.dart';
import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/core/repository/branch/branch_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class BranchRepositoryMock extends Mock implements BranchRepository{}

main() {
  final repository = BranchRepositoryMock();
  final controller = BranchController(repository);

  test('test return empty list', () async {
    when(repository.getBranchs()).thenAnswer((_) async => []);
    final result = await controller.getBranchs();
    expect([], result);
  });

  test('test repository return BaseResponse', () async {
    when(repository.getBranchs()).thenAnswer((_) async => BaseResponseAPI());
    final result = await controller.getBranchs();
    expect([], result);
  });
}