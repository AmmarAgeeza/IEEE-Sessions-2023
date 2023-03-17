import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions_2023/api_session/view_model/cubits/home_cubit/home_cubit.dart';

import 'api_session/view/screens/home_screen/home_screen.dart';
import 'api_session/view/screens/splash_screen/splash_screen.dart';
import 'state_management_session/counter_example/cubits/cubit.dart';
import 'state_management_session/counter_example/home.dart';
import 'package:http/http.dart' as http;

void main() async {
 //  WidgetsFlutterBinding.ensureInitialized();
 //  print('s');
 //  List response = [];
 //  await http
 //      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'))
 //      .then((value) {
 //    response = jsonDecode(value.body);
 //    print(response[0]);
 //  }).catchError((e) => print(e.toString()));
 // List<Model>modelData= response.map((e) => Model.fromJson(e)).toList();
 // print (modelData[0].title);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [
       BlocProvider( create: (_) => CounterCubit(),),
       BlocProvider( create: (_) => HomeCubit()..getData(),)
     ],
      child: const MaterialApp(
        title: 'IEEE Sessions',
        home: HomeScreen(),
      ),
    );
  }
}

class Model {
  // {userId: 1, id: 1, title: quidem molestiae enim}
  final int userId;
  final int id;
  final String title;

  Model({required this.userId, required this.id, required this.title});

  factory Model.fromJson(Map jsonData) {
    return Model(
      userId: jsonData['userId'],
      id: jsonData['id'],
      title: jsonData['title'],
    );
  }
}
