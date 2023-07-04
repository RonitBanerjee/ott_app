import 'package:flutter/material.dart';
import 'package:ott_app/customAppBar.dart';
import 'package:ott_app/navBar.dart';
import 'package:ott_app/screens_for_mobile/homeInner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 64), child: CustomAppBar()),
        backgroundColor: Colors.black12,
        bottomNavigationBar: BottomAppBar(
          child: NavBar(),
          color: Colors.black,
        ),
        body: HomeInner());
  }
}
