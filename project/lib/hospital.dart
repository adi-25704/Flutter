import 'package:flutter/material.dart';
import 'h_login.dart';
import 'h_register.dart';

class Hospital extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const  Text("Hospital nav"),
      ),
      body: Center(
        child: Column(
          children: [
          const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => H_register()));
              },
              child: Text('FOR NEW REGISTER')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => H_login()));
              },
              child: Text('FOR LOGIN')),
        ],),

      ),
    );
  }
}
