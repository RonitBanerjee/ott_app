import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ott_app/models/theme.dart';
import 'package:ott_app/screens_for_mobile/homeScreen.dart';

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
      height: height * 0.08,
      decoration: BoxDecoration(
        color: CustomTheme.navbarGrey,
      ),
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
                  _homeRedirect();
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
                  child: Image.asset('assets/logout.png'),
                ),
                onTap: () {
                  _selectedIndex = 3;
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  _homeRedirect() {
    Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }
}
