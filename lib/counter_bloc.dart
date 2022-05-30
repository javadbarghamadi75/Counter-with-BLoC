import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}

class CounterRestored extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) => emit(state + 1));
    on<CounterDecremented>((event, emit) => emit(state - 1));
    on<CounterRestored>((event, emit) => emit(state - state));
  }
}
