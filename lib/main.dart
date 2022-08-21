import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';
import 'package:food_delivery/views/pages/login/login.dart';
import 'package:food_delivery/views/pages/login/phone_registration.dart';
import 'package:food_delivery/views/pages/login/reset_password.dart';
import 'package:food_delivery/views/pages/login/sign_up.dart';
import 'package:food_delivery/views/pages/login/verification_code.dart';
import 'package:food_delivery/views/pages/onboarding/onboarding_screen.dart';
import 'package:food_delivery/views/pages/splash/splash_screen.dart';
import 'package:food_delivery/views/pages/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
        fontFamily: "SofiaPro",
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: MyColors.primary,
          ),
        ),
      ),
     routes: {
       SplashScreen.ROUTE_NAME : (context)=>SplashScreen(),
       OnBoardingScreen.ROUTE_NAME : (context)=>OnBoardingScreen(),
       WelcomeScreen.ROUTE_NAME : (context)=>WelcomeScreen(),
       LogIn.ROUTE_NAME : (context)=>LogIn(),
       SignUp.ROUTE_NAME : (context)=>SignUp(),
       VerificationCode.ROUTE_NAME : (context)=>VerificationCode(),
       ResetPassword.ROUTE_NAME : (context)=>ResetPassword(),
       PhoneRegistration.ROUTE_NAME : (context)=>PhoneRegistration(),
     },
      initialRoute: SplashScreen.ROUTE_NAME,
    );
  }
}

