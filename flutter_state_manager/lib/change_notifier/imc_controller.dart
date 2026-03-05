import 'package:flutter/material.dart';

class ImcController extends ChangeNotifier{
  var imc = 0.0;

    Future<void> calcularIMC({required double peso, required double altura}) async {
      imc = 0.0;
      notifyListeners();
      await Future.delayed(Duration(seconds: 1));
      imc = peso / (altura * 2);
      notifyListeners();
  }

  void resetGauge(){
    notifyListeners();
    imc = 0.0;
    notifyListeners();
  } 

}