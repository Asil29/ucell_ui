import 'package:flutter/material.dart';
import 'package:ucell_ui/styles.dart';

class UcellCentralAddressScreen extends StatelessWidget {
  static String id = 'UcellCentralScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(
              'images/UcellHomeScreen3.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('images/back.png',
                              color: Colors.white, width: 30, height: 30),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Ucell-Markaziy',
                          style: kPoppinsBigSizeWith400W,
                          textAlign: TextAlign.center
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text(
                            'Yunus-Obod t, Shaxrisabz ko\'chasi,'
                            'Mo\'ljal: WYNDHAM mehmonxonasi (Sobiq dedeman)',
                            style: kPoppinsSmallSizeWith400W,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ish kunlari: Dushanba-Juma: 8:00 dan 18:00 gacha'
                            'Shanba: 9:00 dan 18:00 gacha'
                            ' Yakshanba 9:00 dan 18:00 gacha, Tushliksiz',
                            style: kPoppinsSmallSizeWith400W,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
