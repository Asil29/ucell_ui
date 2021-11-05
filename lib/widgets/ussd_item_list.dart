import 'package:flutter/material.dart';
import 'package:ucell_ui/styles.dart';

class USSDItemList extends StatelessWidget {
  String title;

  USSDItemList({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                SizedBox(width: 145, height: 20),
                Text(
                  '*100#',
                  textAlign: TextAlign.center,
                  style: kPoppinsBigSizeWith700W,),
                SizedBox(
                  width: 115,
                ),
                Icon(
                  Icons.star,
                  color: Colors.purple[900],
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: kPoppinsSmallSizeWith400W,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 130),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.purple.shade900, width: 2),
            ),
            child: Image.asset(
              'images/phone-call.png',
              color: Colors.purple[900],
              width: 50,
              height: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
