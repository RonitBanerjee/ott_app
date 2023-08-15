import 'package:flutter/material.dart';
import 'package:ott_app/models/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 48,
                child: Image.asset('assets/netflix_logo.png'),
              ),
              SizedBox(
                width: 32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset('assets/neflixPP.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
