import 'package:flutter/material.dart';
// import 'package:flutter_01/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text('Detalhe'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     settings: RouteSettings(
                //       name: 'detalhe',
                //       arguments: {'id': 15},
                //     ),
                //     builder: (context) => Detalhe(),
                //   ),
                // );
                Navigator.of(context).pushNamed('/detalhe', arguments: {'id': 20});
              },
            ),
          ],
        ),
      ),
    );
  }
}
