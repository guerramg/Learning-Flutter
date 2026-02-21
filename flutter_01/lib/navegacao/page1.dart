import 'package:flutter/material.dart';
import 'package:flutter_01/navegacao/home_page.dart';

class Page1 extends StatelessWidget {

  const Page1({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => HomePage(),
                    ),
                    (route) => route.isFirst,
                    );/*REMOVE TODAS AS PAGINAS ABERTAS*/
              },
              child: const Text('Page 2 Via Page'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Page 3 Via Named'),
            ),
          ],
        ),
      ),
    );
  }
}