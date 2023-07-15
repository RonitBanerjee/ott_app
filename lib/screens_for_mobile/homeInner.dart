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
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return ListView(
      padding: const EdgeInsets.all(0),
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        _buildCover(screenHeight, screenWidth),
        _buildSection("Recommnded For You", myList),
        _buildSection("Trending", trending),
        _buildSection("Netflix Originals", originals),
      ],
    );
  }

  Widget _buildCover(double screenHeight, double screenWidth) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  Assets.strangerthings,
                  color: Colors.black,
                  colorBlendMode: BlendMode.softLight,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTags(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _buildIconButton(Icons.add, "Add"),
                        InkWell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        _buildIconButton(Icons.info, "Info"),
                      ],
                    ),
                  ],
                ),
              )
            ],
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
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 175,
          margin: const EdgeInsets.only(left: 16),
          child: ListView.builder(
            itemCount: sectionList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Content content = sectionList[index];
              return GestureDetector(
                child: Container(
                  height: 150,
                  // width: 150,
                  margin: const EdgeInsets.only(right: 16),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(
                        content.imageUrl ?? "",
                        color: const Color.fromARGB(116, 0, 0, 0),
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

_buildIconButton(IconData icon, String text) {
  return InkWell(
    child: SizedBox(
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 24,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildTags() {
  return Container(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      'Thriller • Emotional • US • Drama • TV',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
