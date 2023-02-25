import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var s = Stream.periodic(const Duration(seconds: 2), (x) => x);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 2), (x) => x),
        builder: (context, snapshot) {
          return Center(
              child: snapshot.connectionState != ConnectionState.waiting
                  ? Text(
                      snapshot.data.toString(),
                      style: TextStyle(fontSize: 100),
                    )
                  : CircularProgressIndicator());
        },
      ),
    );
  }

  FutureBuilder<int> buildFutureBuilder() {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5), () => 4),
      builder: (context, snapShot) {
        return Center(
          child: snapShot.connectionState != ConnectionState.waiting
              ? Text(
                  snapShot.data == 4 ? 'amr' : snapShot.data.toString(),
                  style: TextStyle(fontSize: 55),
                )
              : CircularProgressIndicator(),
        );
      },
    );
  }
}
