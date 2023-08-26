import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/Hospital%20Registration/hospitalPage.dart';
import 'package:project/Patient/patientPage.dart';
import 'package:project/firebase_options.dart';
// import 'package:project/Patient/loginstate.dart';
import 'package:project/mainpage.dart';
// import 'package:project/Patient/patients.dart';
// import 'package:project/Hospital%20Registration/registerstate.dart';
import 'package:project/Hospital Registration/registerView_H.dart';
// import 'package:project/StartingPage.dart';

void main(){
  runApp(const MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StartingPage();
  }
}
class StartingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Starting Page")
      ),
      body: Center(
        child: Column(
          children: [
          //Text("HELLO"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Hospital()));
              },
              child: const Text('Hospital')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Personal()));
              },
              child: const Text('Patient')),
        ],),

      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1),(){
          Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          );
        })
      , builder: (context,snapshot) {
        switch (snapshot.connectionState){

          
          case ConnectionState.done:
        final user = FirebaseAuth.instance.currentUser;
          if(user?.emailVerified ?? false){
            // print('Yes You are verified');
            //Navigator.pushNamed(context, '/')
            return const MainPage();
          }else{
            // print('No You are not verified');
            return const RegisterView_H();
          }
          default:
          return const Text('Loading');
        }
      }
      ),

    );
  }
}


