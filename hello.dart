void main(List<String> args) {
  getHeavy();
  
}
Future<int> heavy(int a){
  return Future.delayed(const Duration(seconds: 3),() {
    return a*2;
  });
}
Stream<String> getName(){  
  return Stream.periodic(const Duration(seconds: 1),(val){ 
    return 'Hello';
  });
}
void getHeavy() async{
  var count = 0;
  await for (final value in getName()){
    if(count == 10){
      return;
    }
    print(value);
    print(count++);
    
  }
}

