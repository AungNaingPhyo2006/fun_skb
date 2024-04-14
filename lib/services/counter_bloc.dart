import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

// States
abstract class CounterState {}

class InitialState extends CounterState {}

class UpdatedState extends CounterState {
  final int count;

  UpdatedState(this.count);
}

// Bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield UpdatedState(
          state is UpdatedState ? (state as UpdatedState).count + 1 : 1);
    } else if (event is DecrementEvent) {
      yield UpdatedState(
          state is UpdatedState ? (state as UpdatedState).count - 1 : -1);
    }
  }
}
