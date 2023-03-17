import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ieee_sessions_2023/api_session/view_model/cubits/home_cubit/home_cubit.dart';

import '../../../view_model/cubits/home_cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        print('someData');
        HomeCubit().getData();
        return Scaffold(
          body: cubit.albums.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cubit.albums[index].title),
                    );
                  },
                  itemCount: cubit.albums.length,
                ),
        );
      },
    );
  }
}
