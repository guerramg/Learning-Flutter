
import 'package:mobx/mobx.dart';

class CounterController {
  final _counter = Observable(0);
  late Action increment;

  CounterController() {
    increment = Action(_increment);
  }

  int get counter => _counter.value;

  void _increment() {
    _counter.value++;
  }

}