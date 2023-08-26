import 'package:flutter/material.dart';
import 'Allocation_Suggestion.dart';
import 'Hospital_Data.dart';
import 'PatientData.dart';
import 'registerView_P.dart';
class MainPage_H extends StatefulWidget {
  const MainPage_H({super.key});

  @override
  State<MainPage_H> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage_H> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Welcome')),
      body: Center(
        child: Column(
          children: [
          //const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hospital_Data()));
              },
              child: const Text('Hospital Data')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Allocation_Suggestion()));
              },
              child: const Text('Allocation Suggestion')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterView()));
              },
              child: const Text('Register a Patient')),
          
        ],),
      ),
    );
  }
}

class patientInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: Center(
        child: Text('HI'),
      ),
    );
  }
}

class staffInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: Center(
        child: Text('HI'),
      ),
    );
  }
}

class equipmentInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: Center(
        child: Text('HI'),
      ),
    );
  }
}