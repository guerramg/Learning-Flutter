import 'package:flutter/material.dart';
import 'package:flutter_03/pages/botton_navigator_bar/page1.dart';
import 'package:flutter_03/pages/botton_navigator_bar/page2.dart';

class BottonNavigatorBar extends StatefulWidget {
  const BottonNavigatorBar({super.key});

  @override
  State<BottonNavigatorBar> createState() => _BottonNavigatorBarState();
}

class _BottonNavigatorBarState extends State<BottonNavigatorBar> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botton Navigator')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Pagina 1'),
          BottomNavigationBarItem(icon: Icon(Icons.person_off_sharp), label: 'Pagina 2'),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

//OUTRA FORMA DE MENU FEITO POR STACK