import 'package:flutter/material.dart';
import 'package:project/Hospital%20Registration/allocationPage.dart';
import 'package:project/Hospital%20Registration/hospitalData.dart';
import 'package:project/Hospital%20Registration/registerstate.dart';
import 'registerView_H.dart';
import 'loginview_H.dart';

class Hospital extends StatelessWidget{
  const Hospital({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const  Text("Hospital"),backgroundColor: Colors.cyan
      ),
      body: Center(
        child: Column(
          children: [
          //const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView_H()));
              },
              child: const Text('Register')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView_H()));
              }, 
              child: const Text('Login')),
        ],),

      ),
    );
  }
}

class MainPage_H extends StatefulWidget {
  const MainPage_H({super.key});

  @override
  State<MainPage_H> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage_H> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Welcome')),
      body: Center(
        child: Column(
          children: [
          //const Text("Hello"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Hospital_Data()));
              },
              child: const Text('Hospital Data')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Allocation_Suggestion()));
              },
              child: const Text('Allocation Suggestion')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView()));
              },
              child: const Text('Register a Patient')),
          
        ],),
      ),
    );
  }
}

// class patientInfo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("patient info"),
//       ),
//       body: Center(
//         child: Text('HI'),
//       ),
//     );
//   }
// }

// class staffInfo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("patient info"),
//       ),
//       body: Center(
//         child: Text('HI'),
//       ),
//     );
//   }
// }

// class equipmentInfo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("patient info"),
//       ),
//       body: Center(
//         child: Text('HI'),
//       ),
//     );
//   }
// }
