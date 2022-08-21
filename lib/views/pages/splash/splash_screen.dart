import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';
import 'package:food_delivery/views/pages/welcome/welcome_screen.dart';

import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String ROUTE_NAME = "SplashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
            () => Navigator.pushReplacementNamed(context, OnBoardingScreen.ROUTE_NAME));
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: MyColors.primary,
        child: Center(
          child: Image(
            image: const AssetImage("assets/images/main/logo.png"),
          ),
        ),
      ),
    );
  }
}
