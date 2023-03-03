import 'package:flutter/material.dart';



class Counter1 extends StatelessWidget {
  const Counter1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // print(counter);
    return const Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
              '0',
              style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
