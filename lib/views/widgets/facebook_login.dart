import 'package:flutter/material.dart';

class FacebookLogin extends StatelessWidget{
  const FacebookLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image:AssetImage("assets/images/welcome/facebook_logo.png")),
          SizedBox(width: 5,),
          Text("Facebook",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              fontFamily: "SofiaPro",
            ),
          ),
        ],
      ),
    );
  }
}
