import 'package:flutter/material.dart';
import 'package:flutter_01/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                ).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page2'),
                    builder: (context) => Page2(),
                    ),
                    );
              },
              child: const Text('Page 2 Via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: const Text('Page 2 Via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
