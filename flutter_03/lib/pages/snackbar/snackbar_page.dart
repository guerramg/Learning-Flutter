import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snack Bars')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  backgroundColor: Colors.purple[200],
                  content: Text('Simple Snackbar'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Simple Snackbar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  backgroundColor: Colors.purple[200],
                  content: Text('Action Snackbar'),
                  action: SnackBarAction(
                    label: 'Fechar',
                    onPressed: () {
                      print('Fechar');
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
