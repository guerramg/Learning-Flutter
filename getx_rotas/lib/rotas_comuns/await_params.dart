import 'package:flutter/material.dart';
import 'package:get/get.dart';
    
class AwaitParams extends StatelessWidget {

  const AwaitParams({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ElevatedButton(
        onPressed: () {
          Get.back(result: 'Olá, este é o resultado retornado!');
        },
        child: const Text('Voltar com resultado'),
      ),
    );
  }
}