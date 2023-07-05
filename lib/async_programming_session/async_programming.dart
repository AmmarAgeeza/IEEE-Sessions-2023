
void main() async {
  // print(1);
  // Future(() => 555).then((value) =>
  //     print(value)).catchError((e) {
  //
  // });
  // var num = await Future(() => 4);
  // print(num);
  // print(3);
  // print(4);
  // print(5);
  // print(6);
  // var s= Stream.periodic(Duration(seconds: 2),
  //         (x) => x).listen((_) =>_);
  // s.onData((data) {
  //   if(data==5){
  //     s.cancel();
  //   }else{print(data);}
  // });
  int num1=5;
  int num2=6;

  if(num1>num2){
    print(num1);
  }
  else{
    print(num1);
  }
}

Future<void> printNum() async {
  for (int i = 0; i <= 1000000000; i++) {
    if (i == 100000000) {
      print(i);
    }
  }
}

// Exceptions => done
// 1.future
// 2.async await
// 3.streams
// 4.Future Builder
// 5.Stream Builder
// 6.Shared Preferences
// 7.Project Structure
void method() {
  String topic = 'Exceptions';
  // try {
  //   String data = '322r';
  //   int num = int.parse(data);
  //
  //   print(num);
  // } on SocketException {
  //   print('e');
  // } on FormatException {
  //   print('dd');
  // } catch (e) {
  //   print(e.toString());
  // } finally {
  //   print('finally');
  // }
  topic = 'Future';
  // print('1');
  // Future(()=>int.parse('frdsfa')).then((value) => print(value)).catchError((e){print(e);});
  // print(3);
  // print(2);
  topic = 'Stream';
  //initial
  var s = Stream.periodic(const Duration(seconds: 1), (x) => 4).listen((_) {});
  //dealing with data
  s.onData((data) {
    data > 2 ? s.cancel() : print(data);
  });
  s.onDone(() {
    print('done');
  });
}
