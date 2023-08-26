import 'package:flutter/material.dart';
import 'hospital.dart';
import 'Personal.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Homepage")
      ),
      body: Center(
        child: Column(
          children: [
          //Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hospital()));
              },
              child: Text('Hospital')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Personal()));
              },
              child: Text('Patient')),
        ],),

      ),
    );
  }
}