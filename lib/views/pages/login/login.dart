import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';
import 'package:food_delivery/views/pages/login/reset_password.dart';
import 'package:food_delivery/views/pages/login/sign_up.dart';
import 'package:food_delivery/views/pages/login/verification_code.dart';
import 'package:food_delivery/views/widgets/main_button.dart';

import '../../widgets/back_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/facebook_login.dart';
import '../../widgets/google_login.dart';

class LogIn extends StatelessWidget {
  static const String ROUTE_NAME = "LogIn";
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage("assets/images/login/background.jpeg"))
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // back arrow
                  BackIconButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "SofiaPro",
                      fontSize: 36.41,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("E-mail",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SofiaPro",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9796A1),
                    ),),
                  CustomTextField(hint: "Your email or phone",),
                  SizedBox(height: 10,),
                  Text("Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SofiaPro",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9796A1),
                    ),),
                  CustomTextField(passwordTextField: true,hint: "Password",),
                  Center(child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, ResetPassword.ROUTE_NAME);
                    },
                    child: Text("Forgot password?",
                    style: TextStyle(
                      color: MyColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SofiaPro",
                    ),),
                  ),),
                  Center(
                    child:  MainButton(text: "Login",on_pressed: (){},)
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account? ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5B5B5E)
                        ),),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, SignUp.ROUTE_NAME);
                        },
                        child: Text("Sign Up",
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColors.primary,
                            fontWeight: FontWeight.w400,
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 1,
                          color: Color(0x805B5B5E),
                        ),
                      ),
                      Expanded(
                        child: Text("Sign in with",
                          style: TextStyle(
                            color: Color(0xbf5B5B5E),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "SofiaPro",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          color: Color(0x805B5B5E),
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FacebookLogin(),
                      SizedBox(width: 20,),
                      GoogleLogin(),
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
