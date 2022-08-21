import 'package:flutter/material.dart';
import 'package:food_delivery/views/components/register_text_field.dart';

import '../../widgets/back_button.dart';
import '../../widgets/main_button.dart';

class PhoneRegistration extends StatelessWidget {
  static const String ROUTE_NAME = "PhoneRegistration";
   PhoneRegistration({Key? key}) : super(key: key);


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
                    "Registration",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "SofiaPro",
                      fontSize: 36.41,
                    ),
                  ),
                  Text("Enter your phone number to verify \nyour account",
                    style: TextStyle(
                        fontFamily: "SofiaPro",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff9796A1)
                    ),),
                  SizedBox(
                    height:15,
                  ),
                 // CustomTextField(hint: "Your email "),
                  SizedBox(height: 20,),
                  RegisterTextField(),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: MainButton(text: "Send",
                      on_pressed: (){},),
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
