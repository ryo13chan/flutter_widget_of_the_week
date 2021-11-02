// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WidgetDetailYoutubePlayer extends StatelessWidget {
  final String videoId;
  const WidgetDetailYoutubePlayer(this.videoId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        controlsVisibleAtStart: true,
      ),
    );
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
          RemainingDuration(),
        ],
      ),
      builder: (context, player) {
        return Column(
          children: [
            player,
          ],
        );
      },
    );
  }
}
