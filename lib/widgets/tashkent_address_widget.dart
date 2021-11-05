import 'package:flutter/material.dart';
import 'package:ucell_ui/screens/ucell_central_screen.dart';
import '../styles.dart';

class TashkentAddressWidget extends StatelessWidget {
  String addressName, officeName;

  TashkentAddressWidget({required this.addressName, required this.officeName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, UcellCentralAddressScreen.id);
      },
      child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    SizedBox(width: 120),
                    Text(
                      officeName,
                      style: kPoppinsBigSizeWith700W,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xFF7A5793),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                addressName,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: kPoppinsSmallSizeWith400W,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
