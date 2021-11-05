import 'package:flutter/material.dart';
import 'package:ucell_ui/styles.dart';
import 'package:ucell_ui/widgets/tashkent_address_widget.dart';

class TashkentCityScreen extends StatelessWidget {
  static String id = 'TashkentCityScreen';
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
                          'Toshkent shahri',
                          style: kPoppinsBigSizeWith400W,
                          textAlign: TextAlign.center
                        ),
                      ),
                    ],
                  ),
                  TashkentAddressWidget(
                    officeName: 'Ucell-Markaziy',
                    addressName: 'Yunus-Obod t, Shaxrisabz ko\'chasi',
                  ),
                  TashkentAddressWidget(
                    officeName: 'Ucell-Toshkent',
                    addressName: 'Vohidov ko\'chasi, Mo\'ljal "Grand Hotel"',
                  ),
                  TashkentAddressWidget(
                    officeName: 'Ucell-Markaziy',
                    addressName: 'Yunus-Obod t, Shaxrisabz ko\'chasi',
                  ),
                  TashkentAddressWidget(
                    officeName: 'Ucell-Toshkent',
                    addressName: 'Vohidov ko\'chasi, Mo\'ljal "Grand Hotel"',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
