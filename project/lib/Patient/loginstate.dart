import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project/Patient/patientPage.dart';
import 'package:project/firebase_options.dart';
import 'package:project/mainpage.dart';
// import 'package:project/Hospital%20Registration/registerstate.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController __email,__password;
  
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
        title: const Text('Login'),
        backgroundColor: Colors.cyan,
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                ),
        builder: (context,snapshot){
          switch (snapshot.connectionState){
            case ConnectionState.done:
              return Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter Your Email Here',
              ),
              controller: __email,
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter Your Password Here',
              ),
              controller: __password,
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
            ),
            TextButton(
              onPressed: () async{
                //Function On Clicking Login
                final email = __email.text;
                final password = __password.text;
                try{

                final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

                DatabaseReference userRef = FirebaseDatabase.instance.ref().child('patient');
                String? uid = userCredential.user?.uid;
                userRef.child(uid!).set({
                  'email': email,
                  'password': password
                });

                Navigator.pop(context,true);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage_P()));
                // print(userCredential.jsify());
                }on FirebaseAuthException catch(e){
                  if(e.code == 'user-not-found'){
                    print('User Not Found');
                  }else if(e.code == 'wrong-password'){
                    print('Wrong Password');
                  }
                }
              },
              child: const Text('Login')
              ,),
              // TextButton(onPressed: () {
              //   Navigator.push((context),MaterialPageRoute(builder: (context) => const RegisterView()));
              // },
              // child: const Text('Register'),
              // ), 
          ],
        );
          default: return const Text("Loading...");
        }
        },
      ),
    );
  }
}

