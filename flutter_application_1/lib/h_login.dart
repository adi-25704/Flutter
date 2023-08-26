import 'package:flutter/material.dart';
import 'Hospital_Data.dart';
import 'Internal_Homepage.dart';
import 'registerView_P.dart';
class H_login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Hospital_Data()));      
          },
          child: Text("go back"),
        ),
      ),
    );
  }
}