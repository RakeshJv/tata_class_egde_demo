import 'package:demo/dialog/add_video_notes_dialog.dart';
import 'package:demo/util/app_colors.dart';
import 'package:demo/util/app_string.dart';
import 'package:demo/view/home/video_manager/video_manager.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
class VideoPlayerScreen extends StatefulWidget {

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}


class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;

  VideoManager  videoManager ;

  Future<ClosedCaptionFile> _loadCaptions() async {
    final String fileContents = await DefaultAssetBundle.of(context)
        .loadString('assets/bumble_bee_captions.srt');
    return SubRipCaptionFile(fileContents);
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://github.com/classedge/demo-app/blob/main/assign1/1.mp4?raw=true',
      //closedCaptionFile: _loadCaptions(),
      // videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );
    videoManager =VideoManager(controller: _controller);
    _controller.addListener(() {

      print("videoPlayerOptions");
      setState(() {});

      if (_controller.value.isInitialized) {
        int duration = _controller.value.duration.inSeconds;
        final int position = _controller.value.position.inSeconds;
        print("duration--" + duration.toString());
        print("current --position---" + position.toString());

        int maxBuffering = 0;
        for (DurationRange range in _controller.value.buffered) {
          final int end = range.end.inSeconds;
          if (end > maxBuffering) {
            maxBuffering = end;
          }
        }
        print("maxBuffering--" + maxBuffering.toString());
        print("maxBuffering--" + maxBuffering.toString());

        double bufferd = maxBuffering / duration;
        double played = position / duration;
        print("bufferd--" + bufferd.toString());
        print("played--" + played.toString());

      }
      setState(() {

        if(!_controller.value.isPlaying && _controller.value.isInitialized ) {
          videoManager.showNoteDialog(context);
          setState(() {
          });
        }
        if (!_controller.value.isPlaying &&_controller.value.isInitialized &&
            (_controller.value.duration ==_controller.value.position)) {
          print(" video finish ");
          setState(() {
            _controller.initialize();
            _openVideoPlayer( context);
          });
        }
      });

    });
   // _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           backgroundColor: COLORS.salmonMain,

    title: const Text('Video player '),

    ),
      body:  SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(padding: const EdgeInsets.only(top: 20.0)),
             // const Text('With remote mp4'),
              Container(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controller),
                      ClosedCaption(text: _controller.value.caption.text),
                      _ControlsOverlay(controller: _controller),
                      VideoProgressIndicator(_controller,allowScrubbing: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }



  void _openVideoPlayer(BuildContext  context)async {
    Navigator.pushNamed(context, AppString.ROUTE_DIRECT_QUIZ_SCREEN);
  }
}
class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key key,  this.controller})
      : super(key: key);

  static const _examplePlaybackRates = [
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
            color: Colors.black26,
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 100.0,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (speed) {
              controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (context) {
              return [
                for (final speed in _examplePlaybackRates)
                  PopupMenuItem(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }

}

