import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AudioPlayer player = AudioPlayer();
  final url =
      'https://cdn.pixabay.com/download/audio/2021/10/20/audio_9c4a83fbe5.mp3?filename=child39s-play-trap-9660.mp3';

  @override
  void initState() async {
    super.initState();
    await player.setSourceUrl(url);
  }

  @override
  void dispose() async {
    await player.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () async {
                  await player.resume();
                },
                icon: Icon(Icons.play_arrow)),
            IconButton(
                onPressed: () async {
                  await player.pause();
                },
                icon: Icon(Icons.pause)),
          ],
        ),
      ),
    );
  }
}

enum PopupAction {
  add,
  remove,
}
