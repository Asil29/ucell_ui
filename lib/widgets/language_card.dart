import 'package:flutter/material.dart';
import 'package:ucell_ui/styles.dart';

class LanguageCards extends StatelessWidget {
  String title, imageName;
  Function() function;

  LanguageCards({required this.title, required this.function, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: [
            Image.asset(imageName, height: 50, width: 50,),
            SizedBox(
              width: 80,
            ),
            Text(title, style: kPoppinsBigSizeWith700W, textAlign: TextAlign.center),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
