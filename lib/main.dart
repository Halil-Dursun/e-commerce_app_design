import 'package:e_commerce_app_design/constants/constant.dart';
import 'package:e_commerce_app_design/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Commerce App',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      theme:ThemeData(
        scaffoldBackgroundColor: Constant.white,
      ),
      home: SplashScreen(),
    );
  }
}