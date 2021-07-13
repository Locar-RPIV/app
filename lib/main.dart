import 'package:app/app/view/root/app.dart';
import 'package:app/app/view/root/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: App()));
}
