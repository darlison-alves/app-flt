import 'package:SHOP_APP/screens/cred_card/add_card_screen.dart';
import 'package:SHOP_APP/screens/cred_card/credcard_screen.dart';
import 'package:SHOP_APP/screens/sign_in/sign_in_screen.dart';
import 'package:SHOP_APP/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  CredCardScreen.routeName: (context) => CredCardScreen(),
  AddCardScreen.routeName: (context) => AddCardScreen()
};