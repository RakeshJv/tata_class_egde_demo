import 'package:demo/dialog/add_video_notes_dialog.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoManager {



  VideoPlayerController _controller;
  VideoManager({VideoPlayerController controller});

  int getVideTotalViewTime(){
    return _controller.value.duration.inSeconds;
  }

 void  getVideoPlayEvent(){

  }

  bool getVideoPauseEvent(){

  }


  bool isVideoIntialized(){

    return _controller.value.isInitialized;
  }

  bool isVideoPlaying(){

    return _controller.value.isPlaying;
  }

  bool isVideoComplete(){

  }

   bool isCuePoint(){

  }

  void showNoteDialog(BuildContext context)async{
    showDialog(context: context, builder: (BuildContext context){
      return AddVideoNotesDialog();
    });
  }
}