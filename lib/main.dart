import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_app/screens_for_mobile/on_boarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.amikoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: OnBoardingScreen(),
      ),
    );
  }
}
