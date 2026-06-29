import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_rotas/nested_navigation/home_nested_navigation.dart';
import 'package:getx_rotas/rotas_nomeadas/envio_parametros.dart';
import 'package:getx_rotas/rotas_nomeadas/home_page.dart';
import 'package:getx_rotas/rotas_nomeadas/page_404.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      unknownRoute: GetPage(name: '/404', page: () => const Page404()),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ), 
      initialRoute: '/home',
      routingCallback: (Routing? routing){
        debugPrint('Rota atual: ${routing?.current}');
        debugPrint(routing?.previous);
      },
      getPages:[
          GetPage(name: '/home', page: () => HomePage()),
          GetPage(name: '/envioParametros', page: () => EnvioParametros()),
          GetPage(name: '/nestedNavigation', page: ()=> HomeNestedNavigation())
          // GetPage(name: '/404', page: () => ToPage()),
      ],   
    );
  }
}
