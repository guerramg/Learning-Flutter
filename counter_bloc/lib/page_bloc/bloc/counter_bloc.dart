import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncremented>((event, emit) {
      emit(CounterState(state.counter + 1));
    });

    on<CounterDecremented>((event, emit) {
      emit(CounterState(state.counter - 1));
    });
  }
}
