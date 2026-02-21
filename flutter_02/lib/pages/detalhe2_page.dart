import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {

  const Detalhe2Page({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Detalhe 2'),),
           body: Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context, 'paramentro retornado');
              },
              child: const Text('Voltar'), 
            ),
       ),
       );
  }
}