import 'package:flutter/material.dart';
import 'package:ott_app/data/movie.dart';
import 'package:ott_app/models/theme.dart';
import 'package:ott_app/screens_for_mobile/videoplayerview.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart';

class InfoPageBody extends StatefulWidget {
  final Movie randomMovie;
  const InfoPageBody({
    super.key,
    required this.randomMovie,
  });

  @override
  State<InfoPageBody> createState() => _InfoPageBodyState();
}

class _InfoPageBodyState extends State<InfoPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 4),
            child: _buildFilmCategoryTag(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              widget.randomMovie.movieName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.randomMovie.releaseYear,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                _buildCensorTag(),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  _printDuration(widget.randomMovie.duration),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: _buildTrendingCategoryTag(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoPlayerView(
                            url: widget.randomMovie.trailerUrl,
                            dataSourceType: DataSourceType.network,
                            fullScreen: true,
                          ),
                        ),
                      );
                    },
                    child: _buildBigButton(
                      Colors.black,
                      Colors.white,
                      Icons.play_arrow,
                      "Play",
                    )),
                const SizedBox(
                  height: 16,
                ),
                _buildBigButton(
                  Colors.white,
                  Color(0xff121212),
                  Icons.file_download_outlined,
                  "Download",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              widget.randomMovie.shortDescription,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

String _printDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  return "${twoDigits(duration.inHours)}h ${twoDigitMinutes}m";
}

Widget _buildCensorTag() {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 8,
    ),
    decoration: BoxDecoration(
        color: CustomTheme.netflixgrey, borderRadius: BorderRadius.circular(4)),
    child: const Text(
      'U/A 13+',
      style: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    ),
  );
}

Widget _buildFilmCategoryTag() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 32,
        child: Image.asset(
          'assets/netflix_logo.png',
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      const Text(
        'F I L M',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
    ],
  );
}

Widget _buildTrendingCategoryTag() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 32,
        child: Image.asset(
          'assets/top10tag.png',
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      const Text(
        '#5 in Movies Today',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ],
  );
}

_buildBigButton(
  Color textColor,
  Color bgColor,
  IconData icon,
  String text,
) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16),
    decoration:
        BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(4)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: textColor,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
