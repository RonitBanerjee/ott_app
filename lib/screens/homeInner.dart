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
        Container(
          width: double.infinity,
          child: Image.asset(Assets.thirteenReasonsWhy),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Trending',
            style: GoogleFonts.rubik(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.only(left: 16),
          child: ListView.builder(
            itemCount: trending.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Content content = trending[index];
              return GestureDetector(
                child: Container(
                  height: 150,
                  // width: 150,
                  margin: EdgeInsets.only(right: 16),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(content.imageUrl ?? "")),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Recommended For You',
            style: GoogleFonts.rubik(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.only(left: 16),
          child: ListView.builder(
            itemCount: myList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Content content = originals[index];
              return GestureDetector(
                child: Container(
                  height: 150,
                  // width: 150,
                  margin: EdgeInsets.only(right: 16),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(content.imageUrl ?? "")),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildSection() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Trending',
            style: GoogleFonts.rubik(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.only(left: 16),
          child: ListView.builder(
            itemCount: trending.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Content content = trending[index];
              return GestureDetector(
                child: Container(
                  height: 150,
                  // width: 150,
                  margin: EdgeInsets.only(right: 16),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(content.imageUrl ?? "")),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
