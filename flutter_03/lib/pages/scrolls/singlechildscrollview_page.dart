import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {

  const SinglechildscrollviewPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Single Scroll'),),
           body: SingleChildScrollView( //CRIA ROLAGEM NA PAGINA INTEIRA
             child: Column(
               children: [
                 Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.red,
                 ),
                 Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.blue,
                 ),
                 Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  color: Colors.amber,
                 ),
                 Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.black,
                 ),
               ],
             ),
           ),
       );
  }
}