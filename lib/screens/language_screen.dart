import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ucell_ui/screens/home_screen.dart';
import 'package:ucell_ui/widgets/language_card.dart';

class LanguageScreen extends StatelessWidget {
  static String id = 'LanguageScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6B2C82),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('images/UcellHomeScreen.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 300),
                child: ListView(
                  children: [
                    LanguageCards(
                        title: 'O\'zbek tili',
                        imageName: 'images/uzbekistanflag.png',
                        function: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    LanguageCards(
                      title: 'Rus tili',
                      imageName: 'images/russianflag.png',
                      function: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LanguageCards(
                      title: 'Ingliz tili',
                      imageName: 'images/usaflag.png',
                      function: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
