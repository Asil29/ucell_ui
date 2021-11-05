import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  static String id = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('images/UcellHomeScreen.png'),
      // body: Stack(
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 200,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.only(
      //           bottomRight: Radius.circular(140.0),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(right: 50),
      //       width: 180.0,
      //       height: 180.0,
      //       child: SvgPicture.asset('images/ucell.svg'),
      //     ),
      //   ],
      // ),
    );
  }
}
