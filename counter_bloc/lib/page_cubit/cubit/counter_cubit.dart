import 'package:bloc/bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  
  CounterCubit() : super(const CounterInitial());

  void increment() {
    emit(CounterState(state.counter + 1));
  }

  void decrement() {
    emit(CounterState(state.counter - 1));
  }
}