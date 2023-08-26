import 'package:flutter/material.dart';
import 'hdata.dart';

class Hlogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Hdata()));          },
          child: const Text("go back"),
        ),
      ),
    );
  }
}