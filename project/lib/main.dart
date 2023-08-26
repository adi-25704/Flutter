import 'package:flutter/material.dart';
// import 'package:project/Homepage.dart';
import 'homepage.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}





// class hospital_login extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("login"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => null));
//           },
//           child: Text("go back"),
//         ),
//       ),
//     );
//   }
// }



