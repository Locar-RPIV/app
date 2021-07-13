import 'package:app/app/controller/branch/branch_controller.dart';
import 'package:app/core/repository/branch/branch_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{
  @override
  List<Bind> get binds => [
    Bind<IBranchRepository>((i)=> BranchRepository()),
    Bind<IBranchController>((i)=> BranchController(i()))
  ];
  
  @override
  List<ModularRoute> get routes => [];
}