part of 'counter_cubit.dart';

class CounterState {
  final int counter;
  const CounterState(this.counter);
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}