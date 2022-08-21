import 'package:flutter/material.dart';
import 'package:food_delivery/views/components/onboarding_item.dart';
import 'package:food_delivery/views/pages/welcome/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String ROUTE_NAME = "OnBoardingScreen";

  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        PageView(
            controller: pageController,
            onPageChanged: (index) {
              counter = index;
              setState(() {});
            },
            children: [
              OnboardingItem(
                imageHeight: MediaQuery.of(context).size.height * 0.5,
                imageWidth: MediaQuery.of(context).size.width,
                imagePath: "assets/images/onboarding/onboarding11.png",
                headLineText: "Browse your  menu\n and order directly",
                bodyText:
                    "Our app can send you everywhere, even\n space. For only \$2.99 per month",
                on_tap: () {
                  pageController.jumpToPage(counter+1);
                  setState(() {});
                },
              ),
              OnboardingItem(
                imagePath: "assets/images/onboarding/onboarding2.png",
                imageHeight: MediaQuery.of(context).size.height * 0.5,
                imageWidth: MediaQuery.of(context).size.width,
                headLineText: "Even to space with \nus! Together",
                bodyText:
                    "Our app can send you everywhere, even \nspace. For only\$2.99 per month",
                on_tap: () {
                  pageController.jumpToPage(counter+1);
                  setState(() {});
                },
              ),
              OnboardingItem(
                imagePath: "assets/images/onboarding/onboarding3.jpeg",
                imageHeight: MediaQuery.of(context).size.height * 0.5,
                imageWidth: MediaQuery.of(context).size.width,
                headLineText: "Pickup delivery at \nyour door",
                bodyText:
                    "Our app can send you everywhere, even \nspace. For only \$2.99 per month",
                on_tap: () {
                 // pageController.jumpToPage(counter+1);
                  Navigator.pushReplacementNamed(context, WelcomeScreen.ROUTE_NAME);
                 // setState(() {});
                },
              )
            ]),
        SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              spacing: 4.0,
              radius: 2.0,
              dotWidth: 7.0,
              dotHeight: 4.0,
              paintStyle: PaintingStyle.fill,
              strokeWidth: 1.5,
              dotColor: Colors.amber,
              activeDotColor: Colors.amber),
          controller: pageController,
          count: 3,
        )
      ],
    ));
  }
}
