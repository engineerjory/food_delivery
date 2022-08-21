import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';

class OnboardingItem extends StatelessWidget {
  String imagePath;

  String headLineText;
  String bodyText;

  double imageWidth;
  double imageHeight;
  void Function()? on_tap;

  OnboardingItem(
      {Key? key,
        this.on_tap,
      required this.imagePath,
      required this.imageHeight,
      required this.imageWidth,
      required this.headLineText,
      required this.bodyText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image(
              width: imageWidth,
              height: imageHeight,
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10,),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        headLineText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1,
                            fontFamily: "SofiaPro",
                            color: Color(0xff131A38),
                            fontSize: 36,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bodyText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "SofiaPro",
                            color: Color(0xff616772),
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap:on_tap ,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: MyColors.primary,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
