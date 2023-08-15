import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ott_app/models/theme.dart';
import 'package:ott_app/screens_for_mobile/homeScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _selectedIndex = 0;
  TextEditingController _nameTextEditingController = TextEditingController();
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _signIn() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }

  Widget _buildSignInScreen() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 64,
      ),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.only(
              bottom: 32,
            ),
            child: Image.asset(
              'assets/netflix_logo.png',
              width: MediaQuery.sizeOf(context).width * 0.2,
            )),
        TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Email',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: SizedBox(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.lightBlueAccent),
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            InkWell(
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: CustomTheme.netflixRed,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              onTap: () {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailTextEditingController.text.trim(),
                    password: _passwordTextEditingController.text.trim());
                _signIn();
              },
            )
          ],
        ),
      ]),
    );
  }

  Widget _buildSignUpScreen() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 64,
      ),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.only(
              bottom: 32,
            ),
            child: Image.asset(
              'assets/netflix_logo.png',
              width: MediaQuery.sizeOf(context).width * 0.2,
            )),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          style: TextStyle(color: Colors.white),
          controller: _nameTextEditingController,
          decoration: const InputDecoration(
            hintText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          style: TextStyle(color: Colors.white),
          controller: _emailTextEditingController,
          decoration: const InputDecoration(
            hintText: 'Email',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          style: TextStyle(color: Colors.white),
          controller: _passwordTextEditingController,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: SizedBox(
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.lightBlueAccent),
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            InkWell(
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: CustomTheme.netflixRed,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              onTap: () {
                FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _emailTextEditingController.text.trim(),
                    password: _passwordTextEditingController.text.trim());
              },
            )
          ],
        ),
      ]),
    );
  }

  Widget build(BuildContext context) {
    return IndexedStack(
      index: _selectedIndex,
      children: [
        _buildSignUpScreen(),
        _buildSignInScreen(),
      ],
    );
  }
}
