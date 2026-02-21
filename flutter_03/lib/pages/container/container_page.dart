import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  const ContainerPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Container'),),
           body: Container(
               width: 200,
               height: 200,
               color: Colors.blue,
               child: const Center(
                   child: Text('Container'),
               ),
           ),
       );
  }
}