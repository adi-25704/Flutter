import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/Hospital%20Registration/loginview_H.dart';
// import 'package:project/Patient/loginstate.dart';
import '../firebase_options.dart';
class RegisterView_H extends StatefulWidget {
  const RegisterView_H({super.key});

  @override
  State<RegisterView_H> createState() => _RegisterViewState();
}


class _RegisterViewState extends State<RegisterView_H> {

  late final TextEditingController __email;
  late final TextEditingController __crpassword;
  late final TextEditingController __copassword;
  late final TextEditingController __name;
  late final TextEditingController __address;

  
  void clearText(final TextEditingController text) {
    text.clear();
  }

  bool compString(String a, String b){
      if(a.length != b.length){
        return true;
      }
      else{
        for(int i=0; i<a.length; i++){
          if(a[i] != b[i]){
            return true;
          }
          else{
            continue;
          }
        }
      }
      return false;
  }
  @override
  void initState(){
      __email = TextEditingController();
      __crpassword = TextEditingController();
      __copassword = TextEditingController();
      __name = TextEditingController();
      __address = TextEditingController();
    super.initState();
  }
  @override
  void dispose(){
    __email.dispose();
    __crpassword.dispose();
    __copassword.dispose();
    __name.dispose();
    __address.dispose();
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
                hintText:  'Enter Your Organization Email Here',
              ),
            ),
            
            TextField(
              controller: __name,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText:  'Enter Your Name Here',
              ),
            ),
            TextField(
              controller: __address,
              keyboardType: TextInputType.streetAddress,
              decoration: const InputDecoration(
                hintText:  'Enter Your Hospital Address Here',
              ),
            ),
            TextField(
              controller: __crpassword,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText:  'Create Your Password Here',
              ),
            ),
            TextField(
              controller: __copassword,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText:  'Confirm Your Password Here',
              ),
            ),
          
            TextButton(
                onPressed: () async {
                  if(compString(__crpassword.text, __copassword.text)){
                    clearText(__copassword);
                  }
                
                  else {
          
                    final email = __email.text;
                    final password = __copassword.text;
                    final name = __name.text;
                    final address = __address.text;
                    try{
                    // ignore: unused_local_variable
                    final userCredential =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                      );
                      DatabaseReference hospitalRef = FirebaseDatabase.instance.ref().child('Hospital');
                      hospitalRef.child(name).child('details').set({
                        'noOfPatients' : 0,
                        'noOfStaff' : 10,
                        'equipment' : 0.1,
                        'email' : email,
                        'address' : address,
                        'maxNoOfBeds' : 100
                      });
                      
                     // Navigator.pop(context);
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginView_H()));
                    }on FirebaseAuthException catch(e){
                      print('There is a problem!!');
                      if(e.code == 'email-already-in-use'){
                        // Navigator.pop(context);
                        print('Email Already In Use');
                      }
                    }
            
                  }
                },
              
                child:  const Text('Register')),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginView_H()));
                    },
        
                    child: const Text('Login')
                    ,)]
            );
              default:
              return const Text('Loading...');
            }
          },  
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

