import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {

  const BotoesRotacaoTextoPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Botoes e Rotação de Texto'),),
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 RotatedBox(
                  quarterTurns: -1,
                  child: Text('Raphael Guerra'),
                  ),
                  TextButton(onPressed: () { //BOTAO MAIS SIMPLES, PODE COLOCAR O TAMANHO POR CONTAINNER

                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  ),
                  child: const Text('Botão de Teste'),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle icon button press
                    },
                    icon: const Icon(Icons.add),
                  ),
                  ElevatedButton(onPressed: () {
                    // Handle elevated button press
                  },
                   child: const Text('Elevated Button')
                   ),
                   SizedBox(height: 20), // Espaçamento entre os botões
                   ElevatedButton.icon(
                    onPressed: () {
                      // Handle elevated button icon press
                    },
                    icon: const Icon(Icons.add_a_photo),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      minimumSize: Size(200, 50),
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    
                    label: const Text('Elevated Button Icon'),
                    
                   ),
                   SizedBox(height: 20), // Espaçamento entre os botões
                   ElevatedButton.icon(
                    onPressed: () {
                      // Handle elevated button icon press
                    },
                    icon: const Icon(Icons.adb_sharp),
                    style: ButtonStyle( //OUTRA FORMA DE ESTILIZAR O BOTÃO, MAIS FLEXÍVEL
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.resolveWith((states){ // CUSTOMIZAR AÇÕES DO BOTAO
                        if(states.contains(WidgetState.pressed)){
                          return Colors.green;
                        } else if (states.contains(WidgetState.hovered)){
                          return Colors.blue;
                        }
                        return Colors.red;
                      }
                      ),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    
                    label: const Text('Elevated Button Icon'),
                    
                   ),
                   SizedBox(height: 20), // Espaçamento entre os botões
                   InkWell(
                    onTap: (){

                    },
                    child: Text('Botão com InkWell'),
                   ),
                   GestureDetector(
                    onTap: (){

                    },

                    child: Text('Botão com GestureDetector'),
                   ),
               ],
             ),
           ),
       );
  }
}