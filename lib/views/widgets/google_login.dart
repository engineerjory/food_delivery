import 'package:flutter/material.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage("assets/images/welcome/google_logo.png")),
          SizedBox(
            width: 5,
          ),
          Text(
            "Google",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              fontFamily: "SofiaPro",
            ),
          )
        ],
      ),
    );
  }
}
