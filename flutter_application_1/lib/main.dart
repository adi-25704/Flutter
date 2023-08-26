//import 'dart:js_interop';

import 'package:flutter/material.dart';
//import 'package:project/registerstate.dart';
// import 'package:project/Homepage.dart';

import 'homepage.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}
