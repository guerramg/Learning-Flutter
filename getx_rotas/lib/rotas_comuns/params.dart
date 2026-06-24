import 'package:flutter/material.dart';
import 'package:get/get.dart';
    
class ParamsDart extends StatelessWidget {

  const ParamsDart({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final String params = Get.arguments ?? 'Nenhum parâmetro recebido';
    return Scaffold(
      appBar: AppBar(
        title: const Text('GET Params'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(params, style: const TextStyle(fontSize: 20),),
      ),
    );
  }
}