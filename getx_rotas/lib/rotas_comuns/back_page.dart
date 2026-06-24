import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BackPage extends StatelessWidget {

  const BackPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('get Back'),),
           body: ElevatedButton(
            onPressed: (){
             Get.back();
            },
            child: const Text('Voltar'),
           ),
       );
  }
}