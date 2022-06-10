import 'package:e_commerce_app_design/constants/constant.dart';
import 'package:e_commerce_app_design/constants/images.dart';
import 'package:e_commerce_app_design/view/home.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      Grock.toRemove(Home());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
        child: Image.asset(ImagesPath.splashImage),
      ),
    );
  }
}