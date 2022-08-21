import 'package:flutter/material.dart';
import 'package:food_delivery/views/pages/login/phone_registration.dart';

import '../../../config/colors/colors.dart';
import '../../widgets/back_button.dart';
import '../../widgets/small_text_field.dart';

class VerificationCode extends StatelessWidget {
  static const String ROUTE_NAME = "VerificationCode";

  const VerificationCode({Key? key}) : super(key: key);

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
                    "Verification Code",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "SofiaPro",
                      fontSize: 36.41,
                    ),
                  ),
                  Text("Please type the verification code sent to \nprelookstudio@gmail.com",
                  style: TextStyle(
                    fontFamily: "SofiaPro",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff9796A1)
                  ),),
                  SizedBox(
                    height:15,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SmallTextField(),
                     SmallTextField(),
                     SmallTextField(),
                     SmallTextField(),
                   ],
                 ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("I don’t recevie a code! ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5B5B5E)
                        ),),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, PhoneRegistration.ROUTE_NAME);;
                        },
                        child: Text("Please resend",
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColors.primary,
                            fontWeight: FontWeight.w400,
                          ),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
