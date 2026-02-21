import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom({super.key, required BuildContext context}): super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
    child: Container(
      width: 300,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Custom Dialog'),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Fechar'),
            )
          ],
        ),
      ),
    )
  );
}