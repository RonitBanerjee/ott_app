import 'package:flutter/material.dart';
import 'package:ott_app/customAppBar.dart';
import 'package:ott_app/data/movie.dart';
import 'package:ott_app/navBar.dart';
import 'package:ott_app/screens_for_mobile/infoPageBody.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:ott_app/screens_for_mobile/videoplayerview.dart';

class InfoPage extends StatefulWidget {
  final Movie randomMovie;
  const InfoPage({super.key, required this.randomMovie});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 64),
        child: CustomAppBar(),
      ),
      backgroundColor: Colors.black12,
      bottomNavigationBar: BottomAppBar(
        child: NavBar(),
        color: Colors.black,
      ),
      body: ListView(
        children: [
          VideoPlayerView(
            url: widget.randomMovie.trailerUrl,
            dataSourceType: DataSourceType.network,
          ),
          InfoPageBody(
            randomMovie: widget.randomMovie,
          )
        ],
      ),
    );
  }
}
