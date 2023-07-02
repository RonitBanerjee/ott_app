import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: width * 0.25,
            child: Image.asset('assets/home.png'),
          ),
          SizedBox(
            width: width * 0.25,
            child: Image.asset('assets/search-line.png'),
          ),
          SizedBox(
            width: width * 0.25,
            child: Image.asset('assets/download.png'),
          ),
          SizedBox(
            width: width * 0.25,
            child: Image.asset('assets/menu.png'),
          ),
        ],
      ),
    );
  }
}
