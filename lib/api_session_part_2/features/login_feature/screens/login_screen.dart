import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../api_session/view/screens/home_screen/home_screen.dart';
import '../../../core/utils/commons.dart';
import '../model/login_model.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController paswwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          children: [
            TextField(
              controller: emailController,
            ),
            TextField(
              controller: paswwordController,
            ),
            ElevatedButton(
                onPressed: () {
                  Dio().patch(
                    'https://leap-teck.vercel.app/api/v1/chef/signin',
                    data: {
                      "email": emailController.text,
                      "password": paswwordController.text,
                    },
                  ).then(
                    (value) {
                      //status code is 200
                      var data = LoginModel.fromJson(value.data);
                      Fluttertoast.showToast(msg: 'Login successful');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeScreen()));
                      printResponse(data.token);
                       printResponse(data.message);
                    },
                  ).catchError((e) {
                    //status code is 400
                    Fluttertoast.showToast(msg: 'Login Failed');
                    printError(e.toString());
                  });
                },
                child: const Text('Login')),
          ],
        ));
  }
}
