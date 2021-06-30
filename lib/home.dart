import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:practice_bloc/widget.dart';

import 'home-Bloc.dart';
import 'home-provider.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final int count = useProvider(Global_Provider).bloc.state;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('$count'),
          ),
          PlusButton(context),
          MinusButton(context),
          MultipleButton(context),
          ClearButton(context),
        ],
      ),
    );
  }
}
