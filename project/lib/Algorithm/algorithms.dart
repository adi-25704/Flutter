import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
// Occupency 
double? WFM(int occupency,int noOfStaff,int minPat, double equipments){
  if(occupency <= minPat) return 0.0;
  double a = 0.6, b = 0.2, c = 0.2;
  return a*(occupency-minPat) + b*equipments + c*noOfStaff;
}

/*
  alloc
*/  
Future<String>? alloc() async {
  DatabaseReference hospitalRef = FirebaseDatabase.instance.ref().child('Hospital');

  


  

}



