import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Layout Builder'),
        // toolbarHeight: kToolbarHeight + 10, ALTURA DO APPBAR
      ),
      body: Center(
        child: LayoutBuilder(
          // RECEBE O TAMANHO DO CENTER PAI
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  color: Colors.blue,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.5,
                ),
                Container(
                  color: Colors.deepPurple,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


// OUTRA FORMA DE TRABALHAR COM LAYOUT RESPONSIVO