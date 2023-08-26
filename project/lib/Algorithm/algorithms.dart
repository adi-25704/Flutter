// Occupency 
double? WFM(int occupency,int minPat, double equipments){
  if(occupency <= minPat) return 1.0;
  double a = 0.6, b = 1-a;
  return a*(occupency-minPat) + b*equipments;
}

int minimumPatient(String name){
  
}

