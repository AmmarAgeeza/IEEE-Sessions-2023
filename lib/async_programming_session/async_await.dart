void main() async{
  var future = await Future.delayed(const Duration(seconds: 5),sum);
  print(future);
  print('BUBSB');
}
int sum() {
  return int.parse('3');
}
void type() {
  print('IEEE');
}

















// void main() async{
//    int f1 = await Future(() => 4);
//    print(f1);
//   print('object');
//   Future<int> f2=Future.delayed(const Duration(seconds: 1), () => 33);
// f2.then((value) => print(2));
//
// }