import 'package:flutter/material.dart';
import 'package:flutter_03/pages/dialogs/dialog_custom.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible:
                      false, //NÃO DEIXA USUARIO SAIR DO DIALOG CLICANDO FORA DELE
                  context: context,
                  builder: (context) {
                    return DialogCustom(context: context);
                  },
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
               await showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Simple Dialog'),
                      children: [
                        Text('Custom Dialog'),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
              await  showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.red[200],
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Excluir'),
                        ),
                      ],
                      title: Text('Alert Dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Deseja realmente excluir este item?',
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
               final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  );
                  print('Hora selecionada: ${selectedTime}');
              },
              child: const Text('Time Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
               final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  
                );
                print('Data selecionada: $selectedDate');
              },
              child: const Text('Date Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
