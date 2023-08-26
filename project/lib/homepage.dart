import 'package:flutter/material.dart';
import 'hospital.dart';
import 'patient.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("homepage"),
      ),
      body: Center(
        child: Column(
          children: [
          Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hospital()));
              },
              child: Text('FOR HOSPITAL')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Patient()));
              },
              child: Text('FOR PATIENTS')),
        ],),

      ),
    );
  }
}