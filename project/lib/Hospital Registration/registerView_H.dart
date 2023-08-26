import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/loginstate.dart';
import '../firebase_options.dart';

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
        title: const Text("Register"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future:
        Future.delayed(const Duration(seconds: 2), (){
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
      
              
      
      
                final email = __email.text;
                final password = __password.text;
                try{
                final userCredential =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email,
                  password: password,
                  );
                  Navigator.pop(context);
                }on FirebaseAuthException catch(e){
                  print('There is a problem!!1');
                  if(e.code == 'email-already-in-use'){
                    Navigator.pop(context);
                  }
                }
        
              },
              child:  const Text('Register')),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginView()));
                  },
                  child: const Text('Login')
                  ,)]
          );
            default:
            return const Text('Loading...');
          }
        } ,
      ),
    );
  }
}

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}