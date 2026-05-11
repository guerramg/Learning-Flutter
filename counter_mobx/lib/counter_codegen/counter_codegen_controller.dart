import 'package:mobx/mobx.dart';

part 'counter_codegen_controller.g.dart';

class CounterCodeGenController =_CounterCodeGenControllerBase with _$CounterCodeGenController;

abstract class _CounterCodeGenControllerBase with Store{

@observable
int counter = 0;

@action
void increment(){
  counter ++;
}

}