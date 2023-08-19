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
  await for (final value in getName()){
    print(value);
  }
}

class Pair<T1,T2>{
  final T1 first;
  final T2 second;
  Pair(this.first, this.second);
}
// void answer(){
//   String? name = null;
//   String? surname = 'Krish';
//   print(name??surname); // First Non Null Value

// }