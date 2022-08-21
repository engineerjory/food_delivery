import 'package:flutter/material.dart';
import 'package:food_delivery/views/pages/login/verification_code.dart';
import 'package:food_delivery/views/widgets/custom_text_field.dart';
import 'package:food_delivery/views/widgets/main_button.dart';

import '../../widgets/back_button.dart';
import '../../widgets/small_text_field.dart';

class ResetPassword extends StatelessWidget {
  static const String ROUTE_NAME = "ResetPassword";
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height:  double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/login/background.jpeg"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackIconButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                  ),
                  Text(
                    "Resset Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "SofiaPro",
                      fontSize: 36.41,
                    ),
                  ),
                  Text("Please enter your email address to \nrequest a password reset",
                    style: TextStyle(
                        fontFamily: "SofiaPro",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff9796A1)
                    ),),
                  SizedBox(
                    height:15,
                  ),
                  CustomTextField(hint: "Your email "),
                   SizedBox(height: 20,),

                  Center(
                    child: MainButton(text: "Send new password",
                      on_pressed: (){
                      Navigator.pushNamed(context, VerificationCode.ROUTE_NAME);
                      },),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
