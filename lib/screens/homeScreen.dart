import 'package:flutter/material.dart';
import 'package:ott_app/customAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 64), child: CustomAppBar()),
    );
  }
}
