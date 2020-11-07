import 'package:flutter/material.dart';
import 'package:trailerfilm_app/pages/home_page.dart';
import 'package:trailerfilm_app/theme/colors.dart';
import 'package:trailerfilm_app/widgets/trailer_film_icons.dart';
import 'package:trailerfilm_app/widgets/upload_icon.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  AppBar appbar = AppBar(backgroundColor: Colors.red);
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
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: pageIndex,
      children: <Widget>[
        HomePage(),
        Center(
          child: Text("Discover",style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        ),
        Center(
          child: Text("All Activity",style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        ),
        Center(
          child: Text("Profile",style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }

  Widget getFooter() {
    List bottomItems = [
      {"icon": TrailerFilmIcons.home, "label": "Home", "isIcon": true},
      {"icon": TrailerFilmIcons.search, "label": "Discover", "isIcon": true},
      {"icon": TrailerFilmIcons.messages, "label": "Inbox", "isIcon": true},
      {"icon": TrailerFilmIcons.profile, "label": "Me", "isIcon": true}
    ];
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: appBgColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length,(index){
            return bottomItems[index]['isIcon'] ?
            InkWell(
              onTap: (){
                selectedTab(index);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    bottomItems[index]['icon'],
                    color: white ,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      bottomItems[index]['label'],
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                  )
                ],
              ),
            ) :
            InkWell(
                onTap: (){
                  selectedTab(index);
                },
                child: UploadIcon()
            );
          }),
        ),
      ),
    );
  }
  selectedTab(index){
    setState(() {
      pageIndex = index;
    });
  }
}