import 'package:flutter/material.dart';
class NavBarIcons extends StatelessWidget {
  String imageTitle;

  NavBarIcons({required this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(
        
        imageTitle,
        color: Colors.white,
        width: 30,
        height: 30,
      ),
    );
  }
}