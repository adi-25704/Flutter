import 'package:flutter/material.dart';
import 'PatientData.dart';
class MainPage_P extends StatefulWidget {
  const MainPage_P({super.key});

  @override
  State<MainPage_P> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage_P> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Welcome')
      ),
      body: Center(
        child: Column(
          children: [
          const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Patient_Data()));
              },
              child: const Text('Patient Data')),
        ],),
      ),
    );
  }
}
