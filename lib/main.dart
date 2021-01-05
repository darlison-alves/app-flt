import 'package:SHOP_APP/routs.dart';
import 'package:SHOP_APP/screens/cred_card/add_card_screen.dart';
import 'package:SHOP_APP/screens/cred_card/credcard_screen.dart';
import 'package:SHOP_APP/screens/splash/splash_screen.dart';
import 'package:SHOP_APP/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: AddCardScreen.routeName,
      routes: routes,
    );
  }
}
