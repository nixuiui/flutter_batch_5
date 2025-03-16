import 'package:flutter_batch_5/pages/day6/blocs/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {

  CounterCubit() : super(CounterState());

  void incrementCounter() async {
    emit(state.copyWith(loading: true));
    await Future.delayed(Duration(seconds: 1));
    final currentCounter = state.counter;
    emit(state.copyWith(
      counter: currentCounter + 1,
      loading: false
    ));
  }

}