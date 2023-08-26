import 'package:flutter/material.dart';
import 'registerView_P.dart';
import 'H_login.dart';
import 'loginview_P.dart';
class Personal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const  Text("Patient"),backgroundColor: Colors.cyan
      ),
      body: Center(
        child: Column(
          children: [
          //const Text("Hello"),
            
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView_P()));
              },
              child: Text('Login')),
        ],),

      ),
    );
  }
}