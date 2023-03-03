import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions_2023/state_management_session/counter_example/cubits/cubit.dart';
import 'package:ieee_sessions_2023/state_management_session/counter_example/cubits/cubit.dart';
import 'package:ieee_sessions_2023/state_management_session/counter_example/home.dart';

import 'cubits/state.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Card(
          elevation: 6,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Center(
              child: Text(BlocProvider.of<CounterCubit>(context).counter.toString(), style: TextStyle(fontSize: 40)),
            ),
          ),
        );
      },
    );
  }
}
