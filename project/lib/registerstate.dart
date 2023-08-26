import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  late final TextEditingController __email;
  late final TextEditingController __password;

  @override
  void initState(){
      __email = TextEditingController();
      __password = TextEditingController();
    super.initState();
  }
  @override
  void dispose(){
    __email.dispose();
    __password.dispose();
    super.dispose(); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future:
        Future.delayed(Duration(seconds: 2), (){
              Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                );
            }),
        builder: (context, snapshot) {
          switch (snapshot.connectionState){
            
            case ConnectionState.done:
            return Column(
            children: [
              TextField(
              controller: __email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText:  'Enter Your Email Here',
              ),
            ),
            TextField(
              controller: __password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText:  'Enter Your Password Here',
              ),
            ),
            TextButton(
              onPressed: () async {
      
              
      
      
                final _email = __email.text;
                final _password = __password.text;
                
                final userCredential =  FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: _email,
                  password: _password,
                  );
                
                print(userCredential);
              },
              child:  const Text('Register')),
              TextButton(
                onPressed: () {
                  // Change State From Current To Login
                  // const LoginPage();
                },
                child: const Text('Login'),
                ),]
          );
            default:
            return const Text('Loading...');
          }
        } ,
      ),
    );
  }
}