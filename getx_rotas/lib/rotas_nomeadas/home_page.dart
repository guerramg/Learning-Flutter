import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_rotas/rotas_comuns/await_params.dart';
import 'package:getx_rotas/rotas_comuns/back_page.dart';
import 'package:getx_rotas/rotas_comuns/params.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page Nomeadas'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Get.toNamed('page404');
                  },
                  child: const Text('404'),
                ),
                ElevatedButton(
                  onPressed: (){
                    Get.to(BackPage());
                  },
                  child: const Text('Back'),
                ),
                                ElevatedButton(
                  onPressed: (){
                    Get.to(ParamsDart(), arguments: 'Olá, sou um parâmetro!');
                  },
                  child: const Text('Params'),
                ),
                ElevatedButton(
                  onPressed: () async {
                  final result = await Get.to(AwaitParams(), arguments: 'Olá, sou um parâmetro!');
                  debugPrint('Resultado recebido: $result');
                  },
                  child: const Text('Await Params'),
                ),
                                ElevatedButton(
                  onPressed: (){
                  Get.toNamed('/envioParametros?nome=João&idade=30&uf=SP');
                  },
                  child: const Text('Envio Params'),
                ),
              ],
            ),
            ),
       );
  }
}