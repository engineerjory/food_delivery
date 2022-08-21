import 'package:flutter/material.dart';

import '../../config/colors/colors.dart';

class SmallTextField extends StatelessWidget {
  const SmallTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: 50,
        height: 50,
        child: TextField(
          keyboardType:TextInputType.number ,
          cursorColor: Colors.amber,
          cursorHeight: 30,
          cursorWidth: 1.5,
          textAlign: TextAlign.center,
          style:TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w400,
            fontFamily: "SofiaPro",
            color: MyColors.primary,
          ) ,
          decoration: InputDecoration(

            contentPadding: EdgeInsets.all(6),
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
      ),
    );
  }
}
