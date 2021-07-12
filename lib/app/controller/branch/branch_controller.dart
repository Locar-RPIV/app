import 'package:app/app/model/branch/branch.dart';
import 'package:app/core/repository/branch/branch_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IBranchController {
  Future<List<Branch>> getBranchs(BuildContext context);
}

class BranchController implements IBranchController {
  @override
  Future<List<Branch>> getBranchs([BuildContext context]) async {
    final dynamic response = await BranchRepository().getBranchs();
    if (response is List<Branch>) {
      return response;
    }
    return [];
  }
}
