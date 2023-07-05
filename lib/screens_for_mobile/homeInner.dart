import 'package:flutter/material.dart';
import 'package:ott_app/assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_app/data/data.dart';
import 'package:ott_app/models/content_model.dart';

class HomeInner extends StatefulWidget {
  const HomeInner({super.key});

  @override
  State<HomeInner> createState() => _HomeInnerState();
}

class _HomeInnerState extends State<HomeInner> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        _buildCover(),
        _buildSection("Recommnded For You", myList),
        _buildSection("Trending", trending),
        _buildSection("Netflix Originals", originals),
      ],
    );
  }

  Widget _buildCover() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            Assets.thirteenReasonsWhy,
            color: Colors.black,
            colorBlendMode: BlendMode.softLight,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String sectionTitle, List<Content> sectionList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '${sectionTitle}',
            style: GoogleFonts.rubik(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 175,
          margin: EdgeInsets.only(left: 16),
          child: ListView.builder(
            itemCount: sectionList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Content content = sectionList[index];
              return GestureDetector(
                child: Container(
                  height: 150,
                  // width: 150,
                  margin: EdgeInsets.only(right: 16),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(
                        content.imageUrl ?? "",
                        color: Color.fromARGB(116, 0, 0, 0),
                        colorBlendMode: BlendMode.softLight,
                      )),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
