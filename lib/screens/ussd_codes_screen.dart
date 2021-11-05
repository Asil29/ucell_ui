import 'package:flutter/material.dart';
import 'package:ucell_ui/styles.dart';
import 'package:ucell_ui/widgets/ussd_item_list.dart';

class UssdCodesScreen extends StatelessWidget {
  static String id = 'USSDCodesScreen';

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
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'USSD kodlar',
                        style: kPoppinsBigSizeWith400W,
                      ),
                    ],
                  ),
                  USSDItemList(
                    title: 'Balansni tekshirish',
                  ),
                  USSDItemList(
                    title: 'Hisobdagi qoldiqni bilish',
                  ),
                  USSDItemList(
                    title:
                        'Mobile otkazma xizamti doirasida bir oy davomida jonatilgan/qabul qilingan mablag haqida malumot',
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
