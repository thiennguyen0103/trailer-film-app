import 'package:flutter/material.dart';
import 'package:trailerfilm_app/widgets/video_description.dart';
import 'package:trailerfilm_app/widgets/bottom_toolbar.dart';
import 'package:trailerfilm_app/widgets/actions_toolbar.dart';
import 'package:trailerfilm_app/video_player.dart';

class Home extends StatelessWidget {
  AppBar appbar = AppBar(backgroundColor: Colors.red);
  // Widget get topSection => Container(
  //   height: 100.0,
  //   padding: EdgeInsets.only(bottom: 15.0),
  //   alignment: Alignment(0.0, 1.0),
  //   child: Container(
  //     child: VideoApp(),
  //   )
  // );
  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[VideoDescription(), ActionsToolbar()]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: appbar.preferredSize.height),
          children: <Widget>[
            ListTile(
              title: Text("Account"),
            ),
            ListTile(
              title: Text("Favorite"),
            ),
            ListTile(
              title: Text("Setting"),
            ),
            ListTile(
              title: Text("Log out"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // Top section
          // topSection,

          // Middle expanded
          middleSection,

          // Bottom Section
          BottomToolbar(),
        ],
      ),
    );
  }
}