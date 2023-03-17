import 'package:flutter/material.dart';

import '../../../app_constants/app_color.dart';
import '../../components/app_components/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const Spacer(flex: 1,),
              Row(children: const [
                Spacer(flex: 1),
                Text(
                  'Orange',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
                Text(
                  'Digital Center',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 1,
                )
              ]),
              const Spacer(flex: 1,),
              const Padding(
                padding: EdgeInsets.only(right: 400),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
              const Spacer(flex: 1,),
              //email
              SizedBox(
                width: 450,
                child: CustomTextFormField(label: 'E-mail', controller: email),
              ),
              const Spacer(flex: 1,),
              SizedBox(
                width: 450,
                child: CustomTextFormField(label: 'Password', controller: password)
              ),
              const Spacer(flex: 1,),
              //forget password
              Padding(
                padding: const EdgeInsets.only(right: 330),
                child: TextButton(
                  onPressed: () {},
                  child:  Text('Forget Password?',
                      style: TextStyle(
                          color: AppColor.mainColor, fontWeight: FontWeight.bold)),
                ),
              ),
              const Spacer(flex: 1,),
              SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(backgroundColor: AppColor.mainColor),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Spacer(flex: 1,),
              //or
              Row(
                children: [
                  const Spacer(flex: 1,),
                  Container(
                    color: Colors.grey,
                    width: 200,
                    height: 1,
                  ),
                  const Spacer(flex: 1,),
                  const Text('OR',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  const Spacer(flex: 1,),
                  Container(
                    color: Colors.grey,
                    width: 200,
                    height: 1,
                  ),
                  const Spacer(flex: 1,),
                ],
              ),
              const Spacer(flex: 1,),
              //sign up button
              SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.white,side: const BorderSide(color: Colors.orange,width: 5)),
                  child:  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: AppColor.mainColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Spacer(flex: 1,),
            ],
          )),
    );
  }
}