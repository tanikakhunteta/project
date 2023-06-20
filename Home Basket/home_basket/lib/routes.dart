import 'package:flutter/material.dart';
import 'package:home_basket/address.dart';
import 'package:home_basket/signup.dart';
import 'package:home_basket/splash.dart';
import 'package:home_basket/verification.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash_screen':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/signup_screen':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case '/verification_screen':
        return MaterialPageRoute(
            builder: (_) => VerificationScreen(
                  verificationScreenArgumnet:
                      settings.arguments as VerificationScreenArgumnet,
                ));
      case '/address_screen':
        return MaterialPageRoute(builder: (_) => AddressScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
