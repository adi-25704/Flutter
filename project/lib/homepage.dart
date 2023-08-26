import 'package:flutter/material.dart';
import 'hospital.dart';
import 'patient.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HOMEpage"),
      ),
      body: Center(
        child: Column(
          children: [
          const Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hospital()));
              },
              child: const Text('FOR HOSPITAL')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Patient()));
              },
              child: const Text('FOR PATIENTS')),
        ],),

      ),
    );
  }
}