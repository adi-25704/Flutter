import 'package:flutter/material.dart';

class Patient_Data extends StatefulWidget {
  const Patient_Data({super.key});

  @override
  State<Patient_Data> createState() => _MainPageState();
}

class _MainPageState extends State<Patient_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Your Data')
      ),
    );
  }
}