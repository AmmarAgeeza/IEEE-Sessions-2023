import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/album_model.dart';
import 'home_state.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  List data = [];
  List<AlbumModel> albums = [];

  void getData() async {
    print('someData2');
    //http package
    await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'))
        .then((value) {
      data = jsonDecode(value.body);

      for (int i = 0; i < data.length; i++) {
        albums.add(AlbumModel.fromJson(data[i]));
      }
      print(albums[0].title);
      emit(GetData());
    });
  }
}
