import 'package:flutter/material.dart';
import 'package:ott_app/assets.dart';

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
          child: Image.asset(Assets.strangerthings),
        ),
      ],
    );
  }
}
