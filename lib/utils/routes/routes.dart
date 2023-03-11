import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/rotes_named.dart';
import 'package:mvvm_project/views/Screens/Splash.dart';
import 'package:mvvm_project/views/navBarSamples/BuyPointScrean.dart';

import '../../views/ExtraScreens/HomeScreen_view.dart';
import '../../views/ExtraScreens/Signup_view.dart';
import '../../views/ExtraScreens/login_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Splash());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HpomeScreen());
      case RoutesName.Signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignupView());
      case RoutesName.BuyPoints:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BuyPointsScrean());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
