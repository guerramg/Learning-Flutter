import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Color.fromARGB(255, 9, 103, 185),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bloc');
              },
              child: Text(
                'Bloc',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cubit');
              },
              child: Text(
                'Cubit',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
