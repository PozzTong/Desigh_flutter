
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<InCrementEvent>((event, emit) {
      emit(CounterState(number: state.number + 1));
      // TODO: implement event handler
    });
    on<DeCrementEvent>(
      (event, emit) {
        emit(CounterState(number: state.number - 1));
      },
    );
  }
}
