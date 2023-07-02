import 'package:flutter/material.dart';
import 'package:ott_app/models/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Container(
        height: 108,
        decoration: const BoxDecoration(
          color: Colors.black12,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.11,
                child: Image.asset('assets/netflix_logo.png'),
              ),
              SizedBox(
                  width: width * 0.07, child: Image.asset('assets/search.png'))
            ],
          ),
        ),
      ),
    );
  }
}
