
import 'dart:async';

import 'package:flutter_state_manager/bloc_pattern/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc:0));//através do add, adiciona um valor ao stream

  Stream<ImcState> get imcOut => _imcStreamController.stream; //retorna o stream

  Future<void> calcularIMC({required double peso, required double altura}) async {
    try {
  _imcStreamController.add(imcStateLoading());
  await Future.delayed(Duration(seconds: 1));
  final imc = peso / (altura * 2);
  _imcStreamController.add(ImcState(imc: imc));
  // throw Exception();
} on Exception catch (e) {
  _imcStreamController.add(ImcStateError(e.toString(), message: 'Erro ao calcular IMC'));
}
  }

  void dispose() {
    _imcStreamController.close();
  }
}