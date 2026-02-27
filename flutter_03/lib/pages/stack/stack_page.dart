import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Page')),
      body: Stack(
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue, width: 300, height: 300),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(color: Colors.amber, width: 150, height: 150),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 34, 255, 34),
                border: Border.all(color: Color.fromARGB(255, 34, 255, 34)),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              
              width: 50,
              height: 50,
              child: Icon(Icons.wechat_sharp, color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}

//IDEAL PARA DESENVOLVIMENTO DE LAYOUT ESTILO FLOAT EM CSS, SOBREPONDO ELEMENTOS DENTRO DE UM CONTAINER
