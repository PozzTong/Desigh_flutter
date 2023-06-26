part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}
class InCrementEvent extends CounterEvent{}
class DeCrementEvent extends CounterEvent{}
