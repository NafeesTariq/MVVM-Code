import 'package:flutter/material.dart';
import 'package:mvvm_project/repo/auth_repository.dart';
import 'package:mvvm_project/utils/routes/rotes_named.dart';
import 'package:mvvm_project/utils/routes/routes.dart';
import 'package:mvvm_project/view_model/auth_viewmodel.dart';
import 'package:mvvm_project/views/ExtraScreens/login_view.dart';

import 'package:mvvm_project/views/Screens/tabbar.dart';
import 'package:mvvm_project/views/Screens/whatsapp.dart';
import 'package:mvvm_project/views/navBarSamples/BuyPointScrean.dart';
import 'package:mvvm_project/views/navBarSamples/MainScrean.dart';
import 'package:mvvm_project/views/navBarSamples/listviewscrean.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.

          primarySwatch: Colors.blue,
        ),
        home: Main(),
        // initialRoute: RoutesName.login,
        // onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
