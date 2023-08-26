import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Patients extends StatefulWidget {
  const Patients({super.key});

  @override
  State<Patients> createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  @override
  Widget build(BuildContext context) {
    DatabaseReference ref = FirebaseDatabase.instance.ref().child('Patient');
  return Scaffold(
      appBar: AppBar(
        title: const Text('Patient List'),
        backgroundColor: Colors.cyan,
      ),
      body: FirebaseAnimatedList(query: ref, itemBuilder: (context,snapshot,animation,index){
        Map patient = snapshot.value as Map;
        patient['key'] = snapshot.key;
        return GestureDetector(
          onTap: (){

          },
          
        );
      })

    );
  }
}