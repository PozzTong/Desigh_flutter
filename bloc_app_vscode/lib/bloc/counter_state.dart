part of 'counter_bloc.dart';

@immutable
class CounterState {
  late int number;
  CounterState({required this.number});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(number: 0);
}
