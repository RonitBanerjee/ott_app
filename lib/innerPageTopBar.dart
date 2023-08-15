import 'package:flutter/material.dart';

class InnerPageTopBar extends StatefulWidget {
  const InnerPageTopBar({super.key});

  @override
  State<InnerPageTopBar> createState() => _InnerPageTopBarState();
}

class _InnerPageTopBarState extends State<InnerPageTopBar> {
  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              width: 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.asset('assets/neflixPP.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
