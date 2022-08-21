import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';

class MainButton extends StatelessWidget {
  String text;

  void Function()? on_pressed;
  double hight;

  double width;

  MainButton(
      {Key? key,
      this.on_pressed,
      required this.text,
      this.width = 248,
      this.hight = 48})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0,20),
            blurRadius : 20.0,
            spreadRadius : 1.0,
              color: MyColors.primary.withOpacity(0.2),
          )
        ],
      ),
      width: this.width,
      height: this.hight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          )),
          onPressed: on_pressed,
          child: Text(text)),
    );
  }
}
