
import 'package:flutter_modular/flutter_modular.dart';
import 'package:package_flutter_modular/app/categoria/categoria_module.dart';
import 'package:package_flutter_modular/app/splash/splash_page.dart';

class AppModule extends Module {
  
  @override
  //DEPENDENCIAS
  void binds(i){

  }

  @override
  //ROTAS
  void routes(r) {
    r.child('/',
    child: (context) => SplashPage(),
    );
    r.module('/categoria',
    module: CategoriaModule());
  }
}