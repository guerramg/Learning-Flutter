
// import 'package:cuidapet_mobile/app/home_page.dart';
import 'package:cuidapet_mobile/app/modules/auth/auth_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r){
    // r.child('/', child: (context) => HomePage());
    r.module('/auth', module: AuthModule());
  }
}