// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project/Patient/loginstate.dart';
import 'package:project/Patient/patientData.dart';
class Personal extends StatelessWidget{
  const Personal({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const  Text("Patient"),backgroundColor: Colors.cyan
      ),
      body: Center(
        child: Column(
          children: [
          //const Text("Hello"),
            
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
              },
              child: const Text('Login Patient')),
        ],),

      ),
    );
  }
}

// ignore: camel_case_types
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Patient_Data()));
              },
              child: const Text('Patient Data')),
        ],),
      ),
    );
  }
}
