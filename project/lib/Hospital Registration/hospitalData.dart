import 'package:flutter/material.dart';

class Hospital_Data extends StatelessWidget{
  const Hospital_Data({super.key});

  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Hospital data"),backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
          const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const patientInfo()));
              },
              child: const Text('PATIENT INFO')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const staffInfo()));
              },
              child: const Text('STAFF INFO')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const equipmentInfo()));
              },
              child: const Text('EQUIPMENT INFO')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const labInfo()));
              },
              child: const Text('LAB INFO')),
        ],),
      ),
    );
  }
}

class patientInfo extends StatelessWidget{
  const patientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: const Center(
        child: Text('HI'),
      ),
    );
  }
}

class staffInfo extends StatelessWidget{
  const staffInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: const Center(
        child: Text('HI'),
      ),
    );
  }
}

class equipmentInfo extends StatelessWidget{
  const equipmentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: const Center(
        child: Text('HI'),
      ),
    );
  }
}

class labInfo extends StatelessWidget{
  const labInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("patient info"),
      ),
      body: const Center(
        child: Text('HI'),
      ),
    );
  }
}