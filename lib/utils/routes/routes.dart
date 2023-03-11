import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/rotes_named.dart';

import 'package:mvvm_project/views/Screans/BuyPointScrean.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
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
