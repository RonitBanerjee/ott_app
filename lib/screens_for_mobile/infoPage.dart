import 'package:flutter/material.dart';
import 'package:ott_app/customAppBar.dart';
import 'package:ott_app/navBar.dart';
import 'package:ott_app/screens_for_mobile/infoInner.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 64),
        child: CustomAppBar(),
      ),
      backgroundColor: Colors.black12,
      bottomNavigationBar: BottomAppBar(
        child: NavBar(),
        color: Colors.black,
      ),
      body: InfoInner(),
    );
  }
}
