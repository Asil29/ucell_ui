import 'package:flutter/material.dart';
import 'package:ucell_ui/screens/tashkent_city.dart';
import 'package:ucell_ui/styles.dart';
import 'package:ucell_ui/widgets/address_items.dart';

class OurAdressesScreen extends StatelessWidget {
  static String id = 'OurAddressesScreen';

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
      child: Stack(fit: StackFit.expand, children: [
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
                    width: 85,
                  ),
                  Text(
                    'Bizning manzillar',
                    style: kPoppinsBigSizeWith400W,
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(20),
                  children: [
                    AddressItems(
                      title: 'Toshkent shahri',
                      function: () {
                        Navigator.pushNamed(context, TashkentCityScreen.id);
                      },
                    ),
                    AddressItems(
                      title: 'Andijon',
                      function: () {},
                    ),
                    AddressItems(
                      title: 'Fargona',
                      function: () {},
                    ),
                    AddressItems(
                      title: 'Samarqand',
                      function: () {},
                    ),
                    AddressItems(
                      title: 'Buxoro',
                      function: () {},
                    ),
                    AddressItems(
                      title: 'Xorazm',
                      function: () {},
                    ),
                    AddressItems(
                      title: 'Qashqadaryo',
                      function: () {},
                    ),
                    AddressItems(
                      title: 'Surxondaryo',
                      function: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
