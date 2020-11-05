import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MainScreen extends StatelessWidget {
  @override
  AppBar appbar = AppBar(
    backgroundColor: Colors.red,
  );
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
          Stack(
            children: <Widget>[
              new Container(
                  child: new ClipPath(
                    child: Image.network(
                      'http://image.phimmoizz.net/film/7166/poster.medium.jpg',
                      fit: BoxFit.cover,
                    ),
                    clipper: new ImagePath(),
                  )),
              Container(
                margin: EdgeInsets.only(top: 170, left: 10),
                child: FloatingActionButton(
                  child: Icon(Icons.play_arrow),
                  backgroundColor: Colors.redAccent, onPressed: () {

                },
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Avengers End Game",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "The latest Avengers: Endgame trailer may have told us even less than we thought based on new information from the Russo brothers.AVENGERS: ENDGAME Poster Bathes Earth's Mightiest Heroes In The Light Of The Power Stone.",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Cast",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 270,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_UX150_CR0,0,150,218_AL_.jpg",
                                fit: BoxFit.fill,
                                width: 100,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Robert Downey",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "https://m.media-amazon.com/images/M/MV5BMTU2NTg1OTQzMF5BMl5BanBnXkFtZTcwNjIyMjkyMg@@._V1_UY218_CR2,0,150,218_AL_.jpg",
                                fit: BoxFit.fill,
                                width: 100,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chris Evans",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "https://m.media-amazon.com/images/M/MV5BNDQyNzMzZTMtYjlkNS00YzFhLWFhMTctY2M4YmQ1NmRhODBkXkEyXkFqcGdeQXVyNjcyNzgyOTE@._V1_UY218_CR12,0,150,218_AL_.jpg",
                                fit: BoxFit.fill,
                                width: 100,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mark Ruffalo",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_UY218_CR15,0,150,218_AL_.jpg",
                                fit: BoxFit.fill,
                                width: 100,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Scarlet Johanson",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: (){},
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      child: Container(

                        child: Text("Buy Tickets",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomSection
        ],
      ),
    );
  }

}
Widget get bottomSection => Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: List<Widget>.generate(5, (index) => Container(
      width: 40.0, height: 40.0,
      color: Colors.purple[300])),
);
class ImagePath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    // TODO: implement getClip
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height / 1.5);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}