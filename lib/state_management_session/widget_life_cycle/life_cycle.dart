// import 'package:flutter/material.dart';
//
// class WidgetLifeCycle extends StatefulWidget {
//   const WidgetLifeCycle({Key? key}) : super(key: key);
//
//   @override
//   State<WidgetLifeCycle> createState() => _WidgetLifeCycleState();
// }
//
// class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print('init state');
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print('dispose');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('build method');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Widget Life Cycle'),
//       ),
//       body: Center(
//         child: MaterialButton(
//           color: Colors.blueAccent,
//           onPressed: () {
//
//           },
//           child:  const Text('Press'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class WidgetLifeCycle extends StatefulWidget {
  const WidgetLifeCycle({Key? key}) : super(key: key);

  @override
  State<WidgetLifeCycle> createState() => _WidgetLifeCycleState();
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> {


  @override
  void initState() {
    super.initState();
    print('init method');
  }
  @override
  Widget build(BuildContext context) {
    print('build method');
    return Scaffold(
      appBar: AppBar(title: const Text('WidgetLifeCycle'),),
      body: Center(child: MaterialButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading:false,
            ),
            body: Center(child: Text('Screen 2'),),
          )));
        },
        child: const Text('Navigate'),
      ),),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose method');
  }
}
