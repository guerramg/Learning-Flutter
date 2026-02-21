import 'package:flutter/material.dart';
import 'package:flutter_01/navegacao/page1.dart';

class Page3 extends StatelessWidget {

  const Page3({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(title: const Text('Pagina 3'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacement(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page1(),
                    ),
                    
                    );
              },
              child: const Text('Page 1 Via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page1');
              },
              child: const Text('Page 3 Via Named'),
            ),
          ],
        ),
      ),
    );
  }
}