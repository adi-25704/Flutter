import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/firebase_options.dart';
import 'package:project/loginstate.dart';
import 'package:project/mainpage.dart';
import 'package:project/patients.dart';
import 'package:project/registerstate.dart';
// import 'package:project/homepage.dart';

void main(){
  runApp(const MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage(
    
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
            return const LoginView();
          }
          default:
          return const Text('Loading');
        }
        return const Text('Done');
      }
      ),

    );
  }
}


