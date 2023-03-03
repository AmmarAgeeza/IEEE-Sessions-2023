import 'package:flutter/material.dart';

import 'state_management_session/widget_life_cycle/life_cycle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IEEE Sessions',
      home: WidgetLifeCycle(),
    );
  }
}
