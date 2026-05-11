import 'package:mobx/mobx.dart';
part 'future_controler.g.dart';

class FutureControler = FutureControlerBase with _$FutureControler;

abstract class FutureControlerBase with Store {

@observable
var nomeFuture = Future.value('').asObservable();

  Future<void>buscarDados()async{
   nomeFuture = Future.delayed(Duration(seconds: 3), () => 'Raphael Guerra').asObservable();
    // return 'Raphael Guerra';
  }

}