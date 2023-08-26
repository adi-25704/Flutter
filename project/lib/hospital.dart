import 'package:flutter/material.dart';
import 'hlogin.dart';
import 'hregister.dart';

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hregister()));
              },
              child: const Text('FOR NEW REGISTER')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hlogin()));
              },
              child: const Text('FOR LOGIN')),
        ],),

      ),
    );
  }
}
