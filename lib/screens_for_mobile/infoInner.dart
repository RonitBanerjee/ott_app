import 'package:flutter/material.dart';
import 'package:ott_app/data/data.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:video_player/video_player.dart';
import "dart:math";

class InfoInner extends StatefulWidget {
  final String? randomURL;
  const InfoInner({super.key, this.randomURL});

  @override
  State<InfoInner> createState() => _InfoInnerState();
}

class _InfoInnerState extends State<InfoInner> {
  String url = "https://www.youtube.com/watch?v=mnd7sFt5c3A";

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: _getYoutubeVideoIdByURL(randomURL)!,
    autoPlay: true,
    endSeconds: 143,
    params: const YoutubePlayerParams(
      playsInline: true,
      enableJavaScript: false,
      showControls: false,
      showVideoAnnotations: false,
      strictRelatedVideos: false,
      mute: true,
      showFullscreenButton: true,
      loop: true,
    ),
  );

  static String get randomURL => getRandomElement(previews).videoUrl ?? "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YoutubePlayer(
          controller: _controller,
          aspectRatio: 16 / 9,
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
