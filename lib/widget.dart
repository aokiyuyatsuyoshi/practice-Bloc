import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'home-Bloc.dart';
import 'home-provider.dart';
import 'home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///+ボタンのウィジェット
Widget PlusButton(BuildContext context) {
  return ElevatedButton(
    child: const Text('+'),
    style: ElevatedButton.styleFrom(
      primary: Colors.orange,
      onPrimary: Colors.white,
    ),
    onPressed: () {
      context.read<CounterBloc>().add(CounterEvent.increment);
    },
  );
}

///-ボタンのウィジェット
Widget MinusButton(BuildContext context) {
  return ElevatedButton(
    child: const Text('-'),
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
    ),
    onPressed: () {
      context.read<CounterBloc>().add(CounterEvent.decrement);
    },
  );
}

///xボタンのウィジェット
Widget MultipleButton(BuildContext context) {
  return ElevatedButton(
    child: const Text('x︎'),
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
      onPrimary: Colors.white,
    ),
    onPressed: () {
      context.read<CounterBloc>().add(CounterEvent.multiple);
    },
  );
}

///cボタンのウィジェット
Widget ClearButton(BuildContext context) {
  return ElevatedButton(
    child: const Text('C'),
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
      onPrimary: Colors.white,
    ),
    onPressed: () {
      context.read<CounterBloc>().add(CounterEvent.clear);
    },
  );
}
