import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      //  body: ListView.builder( //CARREGA DADOS DE FORMA DINÂMICA, APENAS OS QUE ESTÃO SENDO EXIBIDOS NA TELA
      //    itemCount: 100,
      //    itemBuilder: (context, index) {
      //     // print('Index: $index');
      //      return ListTile(
      //         leading: CircleAvatar(
      //           child: Text('$index'),
      //        ),
      //      );
      //    }
      //  )
      body: ListView.separated(
        //CARREGA DADOS DE FORMA DINÂMICA, APENAS OS QUE ESTÃO SENDO EXIBIDOS NA TELA E COM SEPARADOR ENTRE OS ITENS
        itemCount: 100,
        itemBuilder: (context, index) {
          // print('Index: $index');
          return ListTile(
            title: Text('Item $index'),
            subtitle: Text('Subtítulo $index'),
            leading: CircleAvatar(
            backgroundImage: NetworkImage('https://static.tvtropes.org/pmwiki/pub/images/abcb6534_7913_4eb1_a7a5_62b081ebc628.png'),
            ),
            );
        }, separatorBuilder: (BuildContext context, int index) { 
          return Divider(
            color: Colors.deepPurple,
          ); // SEPARADOR ENTRE OS ITENS DA LISTA
         },
      ),
    );
  }
}
