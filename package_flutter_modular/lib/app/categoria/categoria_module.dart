
import 'package:flutter_modular/flutter_modular.dart';
import 'package:package_flutter_modular/app/categoria/categoria_page.dart';
import 'package:package_flutter_modular/app/categoria/model/categoria_controller.dart';

class CategoriaModule extends Module {

@override
  void binds(Injector i) {
    // i.add((CategoriaController.new)); //inserir aqui o controller para ser injetado
    i.addLazySingleton((CategoriaController.new));
    // i.addSingleton(CategoriaController.new);
  }

  @override
  void routes(r) {
    r.child('/',
    child: (context) => CategoriaPage(),
    );
  }
}