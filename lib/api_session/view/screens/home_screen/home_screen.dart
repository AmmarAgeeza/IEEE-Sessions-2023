import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [];
  List<AlbumModel> albums=[];
  void getData() async {
    //http package
    await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'))
        .then((value) {
      data = jsonDecode(value.body);

  for(int i=0;i<data.length;i++){
    albums.add(AlbumModel.fromJson(data[i]));
  }
  print(albums[0].title);
setState(() {

});
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:

      albums.length==0?Center(child: CircularProgressIndicator(),) :ListView.builder(itemBuilder: (context,index){return ListTile(
        title: Text(albums[index].title),
      );},
      itemCount: albums.length,),
    );
  }
}

class AlbumModel {
  final int userId;
  final int id;
  final String title;

  AlbumModel({required this.userId, required this.id, required this.title});

  factory AlbumModel.fromJson(Map jsonData) {
    return AlbumModel(
      userId: jsonData['userId'],
      id: jsonData['id'],
      title: jsonData['title'],
    );
  }
}
