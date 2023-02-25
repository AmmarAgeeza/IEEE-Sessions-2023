//initial
//dealing with data
//on Data
//onDone
//cancel

import 'package:flutter/material.dart';

void main() {
  //initial
  var s = Stream.periodic(const Duration(seconds: 1), (x) => x).listen((_) {});
  //dealing with data
  s.onData((data) {
    data > 2 ? s.cancel() : print(data);
  });
  s.onDone(() {
    print('done');
  });
  //0
  //1
  //2


  // final s1 = Stream.periodic(
  //   const Duration(seconds: 1),
  //   (v) => v,
  // ).listen((_) => _);
  //
  // s1.onData((data) {
  //   data>10?s1.cancel():print(data+1);
  // });
  //
  // s1.onDone(() {
  //   print('done');
  // });

// final ss =Stream.periodic(Duration(seconds: 1),(x){}).listen((_){});
// ss.onData((data) {print(data);});
}

class StreamBuild extends StatelessWidget {
  const StreamBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 4), (x) => x),
      builder: (ctx, snapShot) {
        return Scaffold(
          appBar: AppBar(
            title: snapShot.hasData
                ? Text('${snapShot.data}')
                : const Text('data'),
          ),
          body: snapShot.connectionState == ConnectionState.waiting
              ? const Center(child: CircularProgressIndicator())
              : Center(child: Text('${snapShot.data}',style: TextStyle(fontSize: 50),)),
        );
      },
    );
  }
}
