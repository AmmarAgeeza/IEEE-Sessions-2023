//initial
//dealing with data
//onDone
//catchError => Task

import 'package:flutter/material.dart';

void main() {
  var future = Future.delayed(Duration(seconds: 5), sum)
      .then((v) => print(v))
      .catchError((e) {
    print(e);
  });
  print('BUBSB');
  print('5');
}

int sum() {
  return int.parse('3');
}

void type() {
  print('IEEE');
}

// import 'package:flutter/material.dart';
//
// void main() {
//   final f1 = Future(() => 4);
//   f1.then((value) => print(value));
//   print('object');
//   Future.delayed(const Duration(seconds: 1), () => 33)
//       .then((value) => print(value));
//   f1.whenComplete(() => print('completed'));
// }
//
// class BuilderFuture extends StatefulWidget {
//   const BuilderFuture({Key? key}) : super(key: key);
//
//   @override
//   State<BuilderFuture> createState() => _BuilderFutureState();
// }
//
// class _BuilderFutureState extends State<BuilderFuture> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Future.delayed(const Duration(seconds: 1),()=>1),
//       builder: (ctx, snapShot) {
//         return Scaffold(
//           appBar: AppBar(title: snapShot.hasData?Text('${snapShot.data}'):Text('data')),
//         );
//       },
//     );
//   }
// }

class Future2 extends StatefulWidget {
  const Future2({Key? key}) : super(key: key);

  @override
  State<Future2> createState() => _Future2State();
}

class _Future2State extends State<Future2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder'),
      ),
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 5), () => 4),
        builder: (ctx, snapShot) {
          int x = 5;
          return SafeArea(
            child: Column(
              children: [
                // DefaultTextStyle(style: style, child: child),
                Text(
                  snapShot.hasData ? '${snapShot.data}' : 'loading',
                  style: const TextStyle(fontSize: 50),
                ),
                Text(
                  snapShot.connectionState == ConnectionState.waiting
                      ? 'loading'
                      : '${snapShot.data}',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
