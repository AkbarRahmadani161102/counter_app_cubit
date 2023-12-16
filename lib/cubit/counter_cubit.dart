import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));
  void increment() => emit(
        CounterState(counterValue: state.counterValue + 1),
      );
  void decrement() {
    if (state.counterValue > 0) {
      emit(CounterState(counterValue: state.counterValue - 1));
    }
  }
}
