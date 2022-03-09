import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FilmDetail extends StatelessWidget {
  static const String routeName = '/filmDetail';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const FilmDetail(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const FilmDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    return Scaffold(
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'vA7DL5vcpgw', //Add videoID.
          flags: const YoutubePlayerFlags(
            hideControls: false,
            controlsVisibleAtStart: false,
            autoPlay: true,
            mute: false,
            loop: true,
          ),
        ),
        showVideoProgressIndicator: false,
        progressIndicatorColor: Colors.blue,
      ),
    );
  }
}
