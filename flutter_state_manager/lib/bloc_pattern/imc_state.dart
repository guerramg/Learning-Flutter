
class ImcState {
  final double imc;

  ImcState({
    
    required this.imc
    
    });
}

class imcStateLoading extends ImcState {
  imcStateLoading() : super(imc: 0);
}

class ImcStateError extends ImcState {
  String? message;
  ImcStateError(String string, {required this.message}) : super(imc: 0);
  
}