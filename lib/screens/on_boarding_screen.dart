import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildSignInScreen() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 64,
        ),
        child: Column(children: [
          Image.asset('assets/netflix_logo.png'),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          )
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return IndexedStack(
      index: _selectedIndex,
      children: [
        Align(
          alignment: Alignment.center,
          child: _buildSignInScreen(),
        ),
        // _buildSignUpScreen(),
      ],
    );
  }
}
