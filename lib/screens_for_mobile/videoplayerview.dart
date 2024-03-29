import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ott_app/data/data.dart';
import 'package:ott_app/data/movie.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import "dart:math";

class VideoPlayerView extends StatefulWidget {
  final String url;
  final DataSourceType dataSourceType;
  final bool? fullScreen;
  const VideoPlayerView({
    super.key,
    required this.url,
    required this.dataSourceType,
    this.fullScreen = false,
  });

  @override
  State<VideoPlayerView> createState() => _InfoInnerState();
}

class _InfoInnerState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewiePlayerController;

  @override
  void initState() {
    super.initState();

    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        _videoPlayerController = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        _videoPlayerController =
            VideoPlayerController.networkUrl(Uri.parse(widget.url));
        break;
      case DataSourceType.file:
        _videoPlayerController = VideoPlayerController.file(File(widget.url));
        break;
      case DataSourceType.contentUri:
        _videoPlayerController =
            VideoPlayerController.contentUri(Uri.parse(widget.url));
        break;
    }

    _chewiePlayerController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        aspectRatio: 16 / 9,
        allowFullScreen: (widget.fullScreen == true) ? false : true,
        fullScreenByDefault: (widget.fullScreen == true) ? true : false);
  }

  void initializePlayer(VideoPlayerController videoPlayerController) async {
    await videoPlayerController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewiePlayerController.dispose();
  }

  Widget _buildFullScreen({
    required Widget child,
  }) {
    final size = _videoPlayerController.value.size;
    final width = size.width;
    final height = size.height;

    return FittedBox(
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (widget.fullScreen == false)
            ? AspectRatio(
                aspectRatio: 16 / 9,
                child: Chewie(
                  controller: _chewiePlayerController,
                ),
              )
            : _buildFullScreen(
                child: Chewie(
                  controller: _chewiePlayerController,
                ),
              )
      ],
    );
  }
}

T getRandomElement<T>(List<T> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}

String? _getYoutubeVideoIdByURL(String url) {
  final regex = RegExp(r'.*\?v=(.+?)($|[\&])', caseSensitive: false);

  try {
    if (regex.hasMatch(url)) {
      return regex.firstMatch(url)!.group(1);
    }
  } catch (e) {
    return null;
  }
}
