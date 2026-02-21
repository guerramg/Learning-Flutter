import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {

  const MediaQueryPage({ super.key });

   @override
   Widget build(BuildContext context) {
    
    final mediaQuery = MediaQuery.of(context); //TRABALHAR COM LAYOUT RESPONSIVO
    final larguraTela = mediaQuery.size.width;
    final alturaTela = mediaQuery.size.height;
    final orientacaoTela = mediaQuery.orientation;
    final statusBarTela = mediaQuery.padding.top;
    final appBarTela = kToolbarHeight;
    final alturaDisponivel = alturaTela - statusBarTela - appBarTela;

       return Scaffold(
           appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text('Media Query'),
            // toolbarHeight: kToolbarHeight + 10, ALTURA DO APPBAR
            ),
           body: Center(
             child: Column(
               children: [
                 Container(
                  color: Colors.blue,
                  width: mediaQuery.size.width,
                  height: alturaDisponivel * 0.5,
                 ),
                 Container(
                  color: Colors.deepPurple,
                  width: mediaQuery.size.width,
                  height: alturaDisponivel * 0.5,
                 ),
               ],
             ),
           ),
       );
  }
}