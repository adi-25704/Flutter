import 'package:flutter/material.dart';
import 'package:project/registerstate.dart';
// import 'package:project/homepage.dart';
import 'package:project/loginstate.dart';

void main(){
  runApp(MaterialApp(home: MyApp()),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("homepage"),
      ),
      body: Center(
        child: Column(
          children: [
          Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => hospital()));
              },
              child: Text('FOR HOSPITAL')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => patient()));
              },
              child: Text('FOR PATIENTS')),
        ],),

      ),
    );
  }
}



class hospital extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOSPITAL NAV"),
      ),
      body: Center(
        child: Column(
          children: [
          Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => register()));
              },
              child: Text('REGISTER NEW')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_login()));
              },
              child: Text('LOGIN')),
        ],),

      ),
    );
  }
}

class register extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("register"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("go back"),
        ),
      ),
    );
  }
}

class hospital_login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("go back"),
        ),
      ),
    );
  }
}

class patient extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PATIENT NAV"),
      ),
body: Center(
        child: Column(
          children: [
          Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => patient_login()));
              },
              child: Text('LOGIN')),
        ],),

      ),
    );
  }
}

class patient_login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("go back"),
        ),
      ),
    );
  }
}