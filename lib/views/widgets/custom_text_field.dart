import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  String hint ;
  bool passwordTextField;

  CustomTextField({Key? key, this.passwordTextField = false,required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: passwordTextField
              ? Icon(
                  Icons.remove_red_eye,
                  size: 12,
            color: Colors.grey,
                )
              : null,
          contentPadding: EdgeInsets.all(6),
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xffC4C4C4),
            fontWeight: FontWeight.w400,
            fontFamily: "SofiaPro",
            fontSize: 17,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xEDEEEEEE),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: MyColors.primary,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
