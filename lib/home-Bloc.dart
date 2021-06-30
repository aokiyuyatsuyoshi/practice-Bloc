import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement, multiple, clear }

class CounterBloc extends Bloc<CounterEvent, int> {
  ///super内が初期状態(この場合0が初期値)
  CounterBloc() : super(0);
  @override

  ///このメソッドは必須(Eventの状態で今回は条件分岐して処理を行う)
  Stream<int> mapEventToState(CounterEvent Event) async* {
    switch (Event) {
      case CounterEvent.increment:

        ///+が押された時
        yield state + 1;
        break;
      case CounterEvent.decrement:

        ///-が押された時
        yield state - 1;
        break;
      case CounterEvent.multiple:

        ///✖︎が押された時
        yield state * 2;
        break;
      case CounterEvent.clear:

        ///cが押された時
        yield 0;
        break;
    }
  }
}
