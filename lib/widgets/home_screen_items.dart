import 'package:flutter/material.dart';

class HomeScreenItems extends StatelessWidget {
  String title, imagename;
  Function() function;

  HomeScreenItems({required this.imagename, required this.title, required this.function });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagename,
              width: 80,
              height: 80,
              color: Colors.purple[900],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.purple[900], fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
