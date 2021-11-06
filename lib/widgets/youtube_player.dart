// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayer extends StatelessWidget {
  final String videoId;
  const YoutubePlayer(this.videoId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: videoId,
        params: YoutubePlayerParams(
          playlist: [videoId],
          autoPlay: false,
          enableCaption: false,
          interfaceLanguage: 'ja',
        ));
    return YoutubePlayerIFrame(
      controller: _controller,
    );
  }
}
