import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/view/components/default_alert_dialog.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/repository/branch/branch_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IBranchController {
  Future<List<Branch>> getBranchs(BuildContext context);
}

class BranchController implements IBranchController {
  Future<List<Branch>> getBranchs(BuildContext context) async {
    Future.delayed(
        Duration(),
        () => DefaultAlertDialog.showLoading(
            context: context, title: "Atualizando lista de filiais!"));
    dynamic response = await BranchRepository().getBranchs();
    Navigator.pop(context);
    if (response is List<Branch>) {
      return response;
    }
    if (response is BaseResponseAPI) {
      DefaultAlertDialog.show(
          context: context,
          listButtons: [
            DefaultButton(
              title: "Voltar",
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            )
          ],
          title: "Poxa...",
          description: "Ocorreu um erro ao buscar as filiais.");
    }
    return [];
  }
}
