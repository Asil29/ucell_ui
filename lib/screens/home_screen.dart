import 'package:ucell_ui/screens/our_adresses.dart';
import 'package:ucell_ui/screens/ussd_codes_screen.dart';

import '../widgets/home_screen_items.dart';
import 'package:flutter/material.dart';
import 'package:ucell_ui/widgets/nav_bar_icons.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF6B2C82),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(
              'images/UcellHomeScreen2.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SizedBox(height: 50),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 140),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'Qidirish',
                        border: InputBorder.none),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(20),
                    children: [
                      HomeScreenItems(
                        imagename: 'images/sim.png',
                        title: 'Tarif rejalari',
                        function: () {},
                      ),
                      HomeScreenItems(
                          imagename: 'images/worldwide.png',
                          title: 'Tarif rejalari',
                          function: () {}),
                      HomeScreenItems(
                          imagename: 'images/clock.png',
                          title: 'Daqiqalar to\'plami',
                          function: () {}),
                      HomeScreenItems(
                        imagename: 'images/messenger.png',
                        title: 'SMS to\'plamlar',
                        function: () {},
                      ),
                      HomeScreenItems(
                        imagename: 'images/code.png',
                        title: 'USSD kodlar',
                        function: () {
                          Navigator.pushNamed(context, UssdCodesScreen.id);
                        },
                      ),
                      HomeScreenItems(
                        imagename: 'images/info.png',
                        title: 'Bizning manzillar',
                        function: () {
                          Navigator.pushNamed(context, OurAdressesScreen.id);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFF6B2C82),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NavBarIcons(
                          imageTitle: 'images/homepage.png',
                        ),
                        NavBarIcons(
                          imageTitle: 'images/star.png',
                        ),
                        NavBarIcons(
                          imageTitle: 'images/viber.png',
                        ),
                        NavBarIcons(
                          imageTitle: 'images/question.png',
                        ),
                        NavBarIcons(
                          imageTitle: 'images/setting.png',
                        ),
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
