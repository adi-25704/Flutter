import 'package:flutter/material.dart';

import 'registerView_P.dart';

class H_register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Register"),
      ),
      body: Center(
       child: ElevatedButton(
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterView()));      
          },
          child: const Text("Register"),
        ),
      ),
    );
  }
}