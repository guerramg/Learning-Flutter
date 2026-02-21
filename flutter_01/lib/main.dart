import 'package:flutter/material.dart';
import 'package:flutter_01/navegacao/home_page.dart' as navegacao;
import 'package:flutter_01/navegacao/page1.dart';
import 'package:flutter_01/navegacao/page2.dart';
import 'package:flutter_01/navegacao/page3.dart';
import 'package:flutter_01/navegacao_params/detalhe.dart';
import 'package:flutter_01/navegacao_params/lista.dart' show Lista;
// import 'package:flutter_01/home/home_page.dart';
// import 'package:flutter_01/images/images_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/navegacao_param',
      debugShowCheckedModeBanner: false,
      title: 'Aplicação Flutter',
      home: navegacao.HomePage(),
      routes: {
        // '': (_) => navegacao.HomePage(),
        '/page1': (_) => Page1(),
        Page2.routeName: (_) => Page2(),/*SE USAR DESTA FORMA PRECISA DESABILITAR O / NA ROTA HOME PAGE*/
        '/page3': (_) => Page3(),
        '/navegacao_param': (_) => Lista(),
        '/detalhe': (_) => Detalhe(),
      },
    );
}
}