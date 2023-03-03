import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions_2023/state_management_session/counter_example/cubits/state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrementState());

  //variables
  int counter = 0;

  //methods
  void increment() {
    counter++;
    emit(CounterIncrementState());
  }

  void minus() {
    counter--;
    emit(CounterMinusState());
  }
}
