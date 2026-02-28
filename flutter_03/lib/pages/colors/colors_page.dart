import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {

  const ColorsPage({ super.key });

   @override
   Widget build(BuildContext context) {
    // var cor = Colors.blueAccent; //SOLIDO
    // var cor = Colors.blueAccent.withAlpha(50); //TRANSPARENCIA
    // var cor = Color.fromRGBO(0, 0, 255, 1); //RGB
    var cor = Color(0xff17599d); // HEXADECIMAL SEMPRE COLOCAR 0XFF ANTES DO HEXADECIMAL, SEM O #
       return Scaffold(
           appBar: AppBar(title: const Text('Colors'),),
           body: Container(
            width: 400,
            height: 400,
            color: cor,
           ),
       );
  }
}