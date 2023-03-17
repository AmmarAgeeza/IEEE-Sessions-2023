import 'package:flutter/material.dart';

import '../login_screen/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  Future.delayed(Duration(seconds: 5),(){
     Navigator.push(context, MaterialPageRoute(builder: (_){return LoginScreen();}));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text('welcome'),
        ),
      ),
    );
  }
}
