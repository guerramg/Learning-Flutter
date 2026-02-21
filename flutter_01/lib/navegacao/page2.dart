import 'package:flutter/material.dart';
import 'package:flutter_01/navegacao/page3.dart';

class Page2 extends StatelessWidget {

  static final String routeName = 'page2';
  const Page2({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                    ),
                    );
              },
              child: const Text('Page 3 Via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Fechar Page 2 via pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              },
              child: const Text('Page 3 Via Named'),
            ),
          ],
        ),
      ),
    );
  }
}