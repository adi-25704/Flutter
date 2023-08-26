import 'package:flutter/material.dart';
import 'h_login.dart';
import 'h_register.dart';
import 'registerView_P.dart';
import 'loginview_P.dart';
import 'registerView_H.dart';
import 'loginview_H.dart';

class Hospital extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const  Text("Hospital"),backgroundColor: Colors.cyan
      ),
      body: Center(
        child: Column(
          children: [
          //const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterView_H()));
              },
              child: Text('Register')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView_H()));
              },
              child: Text('Login')),
        ],),

      ),
    );
  }
}
