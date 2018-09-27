import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Player extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _PlayerState();
  }
}

class _PlayerState extends State<Player> {
  AudioPlayer musicPlayer = new AudioPlayer();
  /*
    pause_circle_outline
    play_circle_outline
    http://music.163.com/song/media/outer/url?id=28191161.mp3
   */

  play () async {
    musicPlayer.play('http://music.163.com/song/media/outer/url?id=28191161.mp3')
      .then((res) {
        if (res == 1) {

        }
      })
      .catchError((e) {

      });
  }

  pause () async {
    await musicPlayer.pause();
  }

  stop () async {
    await musicPlayer.stop();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // AudioPlayer.logEnabled = true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}