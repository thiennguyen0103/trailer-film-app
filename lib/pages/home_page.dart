import 'package:flutter/material.dart';
import 'package:trailerfilm_app/constant/data_json.dart';
import 'package:trailerfilm_app/theme/colors.dart';
import 'package:trailerfilm_app/widgets/column_social_icon.dart';
import 'package:trailerfilm_app/widgets/left_panel.dart';
import 'package:trailerfilm_app/widgets/trailer_film_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:trailerfilm_app/widgets/video_description.dart';
import 'package:trailerfilm_app/widgets/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
        controller: _tabController,
        children: List.generate(items.length, (index) {
          return VideoPlayerItem(
            videoUrl: items[index]['videoUrl'],
            size: size,
            name: items[index]['name'],
            caption: items[index]['caption'],
            songName: items[index]['songName'],
            profileImg: items[index]['profileImg'],
            likes: items[index]['likes'],
            comments: items[index]['comments'],
            shares: items[index]['shares'],
            albumImg: items[index]['albumImg'],
          );
        }),
      ),
    );
  }
}

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  final String name;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;
  VideoPlayerItem(
      {Key key,
        @required this.size,
        this.name,
        this.caption,
        this.songName,
        this.profileImg,
        this.likes,
        this.comments,
        this.shares,
        this.albumImg,
        this.videoUrl})
      : super(key: key);

  final Size size;

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController _videoController;
  bool isShowPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((value) {
        _videoController.play();
        setState(() {
          isShowPlaying = false;
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoController.dispose();


  }
  Widget isPlaying(){
    return _videoController.value.isPlaying && !isShowPlaying  ? Container() : Icon(Icons.play_arrow,size: 80,color: white.withOpacity(0.5),);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoController.value.isPlaying
              ? _videoController.pause()
              : _videoController.play();
        });
      },
      child: RotatedBox(
        quarterTurns: -1,
        child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: BoxDecoration(color: black),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ChewieListItem(
                          videoPlayerController: VideoPlayerController.network(
                            "https://mxh-vitalk.000webhostapp.com/Videos/Marvel%20Studios'%20Avengers_%20Endgame%20-%20Official%20Trailer.mp4",
                          ),
                          looping: true,
                        ),
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
                      Container(
                        child: VideoDescription(),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -170.0,
                  top: -100.0,
                  child: Container(
                    height: widget.size.height,
                    width: widget.size.width,
                      child: Column(
                        children: <Widget>[
                          RightPanel(
                            size: widget.size,
                            likes: "${widget.likes}",
                            comments: "${widget.comments}",
                            shares: "${widget.shares}",
                          )
                        ],
                      )
                  ),
                ),

              ],
            )),
      ),
    );
  }
}

class RightPanel extends StatelessWidget {
  final String likes;
  final String comments;
  final String shares;
  final String profileImg;
  final String albumImg;
  const RightPanel({
    Key key,
    @required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.1,
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    getIcons(TrailerFilmIcons.heart, likes, 35.0),
                    getIcons(TrailerFilmIcons.chat_bubble, comments, 35.0),
                    getIcons(TrailerFilmIcons.reply, shares, 25.0),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}