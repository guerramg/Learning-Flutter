import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:package_flutter_modular/app/categoria/model/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  const CategoriaPage({super.key});

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categoria')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/');
              },
              child: Text('Voltar para Splash'),
            ),
          ),
          TextButton(
            onPressed: () {
              var controller = Modular.get<CategoriaController>();
            },
            child: Text('Ir para Categorias'),
          ),
        ],
      ),
    );
  }
}
