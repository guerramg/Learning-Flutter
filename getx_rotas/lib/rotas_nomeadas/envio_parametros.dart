import 'package:flutter/material.dart';
import 'package:get/get.dart';
    
class EnvioParametros extends StatelessWidget {

  const EnvioParametros({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Paramentros'),
      ),
      body: Column(
        children: [
         Text('Nome: ${Get.parameters['nome'] ?? 'Não informado'}'),
         Text('Idade: ${Get.parameters['idade'] ?? 'Não informado'}'),
         Text('UF: ${Get.parameters['uf'] ?? 'Não informado'}'),
        ],
      ),
    );
  }
}