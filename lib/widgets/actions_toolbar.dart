import 'package:flutter/material.dart';
import 'file:///E:/DoanAnroid/trailerfilm_app/lib/presentation/custom_icons.dart';

class ActionsToolbar extends StatelessWidget {
  // Full dimensions of an action
  static const double ActionWidgetSize = 60.0;

// The size of the icon showen for Social Actions
  static const double ActionIconSize = 35.0;

// The size of the share social icon
  static const double ShareActionIconSize = 25.0;

// The size of the profile image in the follow Action
  static const double ProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getSocialAction(icon: CustomIcons.heart, title: '3.2m'),
          _getSocialAction(icon: CustomIcons.chat_bubble, title: '16.4k'),
          _getSocialAction(icon: CustomIcons.reply, title: 'Share'),
        ]
      )
    );
  }
  Widget _getSocialAction({
    String title,
    IconData icon}) {
    return Container(
        margin: EdgeInsets.only(top: 15.0),
        width: 60.0,
        height: 60.0,
        child: Column(children: [
          Icon(icon,  size: 35.0, color: Colors.grey[300]),
          Padding(
            padding: EdgeInsets.only(top:  2.0),
            child: Text(title, style: TextStyle(fontSize: 12.0)),
          )
        ]));
  }

  Widget _getFollowAction({
    String pictureUrl}) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        width: 60.0,
        height: 60.0,
        child: Stack(
            children: [
          _getPlusIcon()
        ]
        )
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
          width: PlusIconSize,  // PlusIconSize = 20.0;
          height: PlusIconSize, // PlusIconSize = 20.0;
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 43, 84),
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: Icon(Icons.add, color: Colors.white, size: 20.0, )),);
  }

  LinearGradient get musicGradient => LinearGradient(
      colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800]
      ],
      stops: [0.0,0.4, 0.6,1.0],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight
  );
}
