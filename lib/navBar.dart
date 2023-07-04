import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.1,
      child: IndexedStack(
        index: _selectedIndex,
        children: [
          Row(
            children: [
              InkWell(
                child: SizedBox(
                  width: width * 0.25,
                  child: Image.asset('assets/home.png'),
                ),
                onTap: () {
                  _selectedIndex = 0;
                },
              ),
              InkWell(
                child: SizedBox(
                  width: width * 0.25,
                  child: Image.asset('assets/search-line.png'),
                ),
                onTap: () {
                  _selectedIndex = 1;
                },
              ),
              InkWell(
                child: SizedBox(
                  width: width * 0.25,
                  child: Image.asset('assets/download-line.png'),
                ),
                onTap: () {
                  _selectedIndex = 2;
                },
              ),
              InkWell(
                child: SizedBox(
                  width: width * 0.25,
                  child: Image.asset('assets/menu.png'),
                ),
                onTap: () {
                  _selectedIndex = 3;
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
