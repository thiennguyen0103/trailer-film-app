import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trailerfilm_app/signin.dart';


// Widget get middleSection => Expanded(
//     child: Row(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           VideoDescription(),
//           ActionsToolbar()
//         ]));
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Column(
//       children: <Widget>[
//         // Top section
//         // topSection,
//
//         // Middle expanded
//         middleSection,
//
//         // Bottom Section
//         BottomToolbar(),
//       ],
//     ),
//   );
// }
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SignIn(),
    );
  }
}
