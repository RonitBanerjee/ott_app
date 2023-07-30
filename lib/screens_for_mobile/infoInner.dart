import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ott_app/data/data.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import "dart:math";

class InfoInner extends StatefulWidget {
  final String url;
  final DataSourceType dataSourceType;
  const InfoInner({
    super.key,
    required this.url,
    required this.dataSourceType,
  });

  @override
  State<InfoInner> createState() => _InfoInnerState();
}

class _InfoInnerState extends State<InfoInner> {
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
    );
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.dataSourceType.name.toUpperCase(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(),
        AspectRatio(
          aspectRatio: 16 / 9,
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
