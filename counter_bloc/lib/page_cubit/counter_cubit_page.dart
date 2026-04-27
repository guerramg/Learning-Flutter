import 'package:flutter/material.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Color.fromARGB(255, 9, 103, 185),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter 10',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: (){

                  },
                  icon: Icon(Icons.add),
                  label: Text(''),
                  ),
                  TextButton.icon(
                  onPressed: (){

                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                  ),
              ],
            ),
          ],
        ),
        ),
    );
  }
}
