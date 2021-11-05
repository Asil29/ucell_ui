import 'package:flutter/material.dart';
import '../styles.dart';

class AddressItems extends StatelessWidget {
  String title;
  Function() function;

  AddressItems({required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: kPoppinsBigSizeWith700W,
          ),
        ),
      ),
    );
  }
}
