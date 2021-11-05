import 'package:flutter/material.dart';
import 'package:ucell_ui/screens/home_screen.dart';
import 'package:ucell_ui/screens/language_screen.dart';
import 'package:ucell_ui/screens/our_adresses.dart';
import 'package:ucell_ui/screens/splash_screen.dart';
import 'package:ucell_ui/screens/tashkent_city.dart';
import 'package:ucell_ui/screens/ucell_central_screen.dart';
import 'package:ucell_ui/screens/ussd_codes_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      initialRoute: LanguageScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        LanguageScreen.id: (context) => LanguageScreen(),
        UssdCodesScreen.id: (context) => UssdCodesScreen(),
        OurAdressesScreen.id: (context) => OurAdressesScreen(),
        TashkentCityScreen.id: (context) => TashkentCityScreen(),
        UcellCentralAddressScreen.id: (context) => UcellCentralAddressScreen(),
      },
    );
  }
}
