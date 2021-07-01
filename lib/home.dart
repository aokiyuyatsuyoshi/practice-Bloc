import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc/home-Bloc.dart';
import 'package:practice_bloc/widget.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///BlocBuilder(使用するBloc, そのblocのstate)
      body: BlocBuilder<CounterBloc, int>(
        ///builder(context, そのblocのstate)
        builder: (_, count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$count',
                ),
                PlusButton(context),
                MinusButton(context),
                MultipleButton(context),
                ClearButton(context),
              ],
            ),
          );
        },
      ),
    );
  }
}
