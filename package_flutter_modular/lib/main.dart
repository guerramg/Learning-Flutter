import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:package_flutter_modular/app/app_module.dart';
import 'package:package_flutter_modular/app/app_widget.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: AppWidget()
    ),
    );
}

