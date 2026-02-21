import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: Text('Imagens'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/logo_inove.png',
                // fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                // fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              // ignore: sort_child_properties_last
              child: Center(
                child: Text(
                  'Texto sobre imagem de fundo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwayOO78ddOZ01xeKDk4b1C68CCZxZS9MUIQ&s',
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.8,
                ),
                // fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// PARA QUE O FLUTTER CONFIGURE O TAMANHO CERTO DA IMAGEM A BUSCAR, PRECISA CRIAR PASTAS EM ASSETS PARA CADA RESOLUÇÃO DE TELA, COMO POR EXEMPLO: 1920 (PASTA 2.0X), 3840 (PASTA 3.0X) E ASSIM POR DIANTE. O FLUTTER VAI BUSCAR A IMAGEM DE ACORDO COM A RESOLUÇÃO DA TELA DO DISPOSITIVO, GARANTINDO QUE A IMAGEM SEJA EXIBIDA COM A MELHOR QUALIDADE POSSÍVEL, E PRECISA SER O MESMO TAMANHO.