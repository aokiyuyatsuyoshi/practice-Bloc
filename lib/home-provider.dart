// import 'package:flutter/material.dart';
//
// import 'home-Bloc.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// // final Global_Provider = ChangeNotifierProvider((ref) => CounterNotifier());
//
// class CounterNotifier with ChangeNotifier {
//   final bloc = CounterBloc();
//
//   BlocIncrement() async {
//     await bloc.add(CounterEvent.increment);
//     notifyListeners();
//   }
//
//   BlocDecrement() async {
//     await bloc.add(CounterEvent.decrement);
//     notifyListeners();
//   }
//
//   BlocMultiple() async {
//     await bloc.add(CounterEvent.multiple);
//     notifyListeners();
//   }
//
//   BlocClear() async {
//     await bloc.add(CounterEvent.clear);
//     notifyListeners();
//   }
// }
