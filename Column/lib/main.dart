import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
double largura = 100;
double altura = 100;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
       // child: Column( //COLUNAS
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, //TIPO FLEXBOX (HORIZONTAL)
          crossAxisAlignment: CrossAxisAlignment.center, // VERTICAL
          children: [
            Container( //COLUNAS PARA WIDGETS
              color: Colors.red,
              width: largura,
              height: altura,
            ),
            Container( //COLUNAS PARA WIDGETS
              color: Colors.yellow,
              width: largura,
              height: altura,
            ),
            // const SizedBox( //ESPAÇO ENTRE CONTAINERS
            //   height: 20, //MARGEANDO NA ALTURA
            //   width: 20, //MARGEANDO NA LARGURA
            // ),
            Container(
              color: Colors.blue,
              width: largura,
              height: altura,
            )
          ],
        ),
      )
    );
  }
}
