import 'package:flutter/material.dart';
import 'package:project/registerstate.dart';
// import 'package:project/homepage.dart';
import 'package:project/loginstate.dart';

void main(){
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}


