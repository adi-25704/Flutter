import 'package:flutter/material.dart';

class Hospital_Data extends StatelessWidget{
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => patientInfo()));
              },
              child: const Text('PATIENT INFO')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => staffInfo()));
              },
              child: const Text('STAFF INFO')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => equipmentInfo()));
              },
              child: const Text('EQUIPMENT INFO')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => labInfo()));
              },
              child: const Text('LAB INFO')),
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
      body: const Center(
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

class labInfo extends StatelessWidget{
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