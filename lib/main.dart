import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state_management_session/counter_example/cubits/cubit.dart';
import 'state_management_session/counter_example/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=> CounterCubit(),
      child: MaterialApp(
        title: 'IEEE Sessions',
        home: Counter(),
      ),
    );
  }
}
