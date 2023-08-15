import 'package:flutter/material.dart';
import 'package:ott_app/data/movie.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart';
import 'package:ott_app/screens_for_mobile/videoplayerview.dart';

class FullScreenPlay extends StatefulWidget {
  final Movie randomMovie;
  const FullScreenPlay({super.key, required this.randomMovie});

  @override
  State<FullScreenPlay> createState() => _FullScreenPlayState();
}

class _FullScreenPlayState extends State<FullScreenPlay> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: VideoPlayerView(
        url: widget.randomMovie.trailerUrl,
        dataSourceType: DataSourceType.network,
        fullScreen: true,
      ),
    );
  }
}
