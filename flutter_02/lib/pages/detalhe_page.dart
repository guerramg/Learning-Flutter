import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {

final String param;

  const DetalhePage({ super.key, required this.param });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('Detalhe - $param'),),
           body: Container(),
       );
  }
}