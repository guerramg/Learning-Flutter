import 'package:flutter/material.dart';
import 'package:flutter_02/core/navigator_observer_custom.dart';
import 'package:flutter_02/pages/detalhe2_page.dart';
import 'package:flutter_02/pages/detalhe_page.dart';
import 'package:flutter_02/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue),
        navigatorObservers: [
          NavigatorObserverCustom(), /*CHAMA OS METODOS QUE ESTÃO NA CLASSE NAVIGATOR*/
        ],
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage(),
          );
        }
        if (settings.name == '/detalhe') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(param: 'codigo 100',),
          );
        }
        return null;
      },
      routes: {
        '/': (context) => const HomePage(),
        // '/detalhe': (context) => const DetalhePage(),
        '/detalhe2': (context) => Detalhe2Page(),
      },
    );
  }
}
