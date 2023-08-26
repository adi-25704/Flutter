import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'loginview_P.dart';
import 'mainpage_H.dart';
// import 'package:project/homepage.dart';
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
            return const MainPage_H();
          }else{
            // print('No You are not verified');
            return const LoginView_P();
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


