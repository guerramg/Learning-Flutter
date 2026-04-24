import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Splash Page'),),
           body: Center(
            child: ElevatedButton(
              onPressed: (){
                Modular.to.navigate('/categoria');
              },
              child: Text('Ir para Categorias'),
              ),
           ),
       );
  }
}