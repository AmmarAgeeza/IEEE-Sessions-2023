import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions_2023/state_management_session/counter_example/cubits/cubit.dart';

import 'cubits/state.dart';
import 'dashboard.dart';

class Counter extends StatelessWidget {
  int counter = 0;

  int numberOfBuild = 0;

  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    print('number= ${numberOfBuild++}');
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: const Center(
        child: Dashboard(),
      ),
      floatingActionButton: BlocConsumer<CounterCubit,CounterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).increment();
            },
          );
        },
      ),
    );
  }
}
