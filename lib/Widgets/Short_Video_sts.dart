import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortVideo extends StatefulWidget {
  String base_image_url;
  Map<String, dynamic> shortVideoList;

  ShortVideo(this.base_image_url, this.shortVideoList);

  @override
  _ShortVideoState createState() => _ShortVideoState(this.shortVideoList, this.base_image_url);
}

class _ShortVideoState extends State<ShortVideo> {


  String base_image_url;
  Map<String, dynamic> shortVideoList;

  _ShortVideoState(this.shortVideoList, this.base_image_url);


  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;


  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;
  bool _isVideoPlaying = false;
  bool youtubePlayerVisibilty = true;
  bool showPlayer = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    loadYoutubeLoader();
  }


  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  void loadYoutubeLoader(){
    print("loding youtube ${shortVideoList["news_video_id"]}");
    _controller = YoutubePlayerController(
      initialVideoId: shortVideoList["news_video_id"].toString(),

      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: true,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,

      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
    print(_controller);
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [


        showPlayer ? YoutubePlayer(controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.purple,


            bottomActions: [

              CurrentPosition(),
             ProgressBar(
               isExpanded: true,
             ),
              RemainingDuration(),
            ],

            onReady: (){
                setState(() {
                  _isPlayerReady = true;
                });
            },


          ): Container(),
        Visibility(
          visible: youtubePlayerVisibilty,
          child: CachedNetworkImage(

            imageUrl: base_image_url + shortVideoList["news_featured_image"].toString(),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
        ),

        Visibility(
          visible: youtubePlayerVisibilty,
          child: IconButton(
            icon: Icon(Icons.play_circle_filled, size: 50, color: Colors.white,),
            onPressed: (){
              print("button pressed");
              setState(() {
                loadYoutubeLoader();
                showPlayer = true;
                _controller.play();

                youtubePlayerVisibilty = false;
//                if(_isPlayerReady == true){
//                  _controller.play();
//                  youtubePlayerVisibilty = false;
//                  print(_isPlayerReady);
//
//                }
              });


            },
          ),
        ),
      ],
    );
  }


  @override
  void deactivate() {
    // Pauses video while navigating to next page.
   if(_isPlayerReady){
     _controller.pause();
   }
    super.deactivate();
  }

  @override
  void dispose() {
    if(_isPlayerReady){
      _controller.dispose();
      _idController.dispose();
      _seekToController.dispose();
    }

    super.dispose();
  }
}

