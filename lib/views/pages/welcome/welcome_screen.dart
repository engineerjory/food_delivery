import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors/colors.dart';
import 'package:food_delivery/views/pages/login/login.dart';
import 'package:food_delivery/views/pages/login/sign_up.dart';
import 'package:food_delivery/views/widgets/google_login.dart';

import '../../widgets/facebook_login.dart';

class WelcomeScreen extends StatelessWidget {
  static const String ROUTE_NAME = "WelcomeScreen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/welcome/welcome_bg.png"))),
            child: Container(
              decoration: BoxDecoration(
                //  color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.center,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.blue.withOpacity(0.05),
                      Colors.black.withOpacity(0.7),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ]),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      alignment: Alignment.center,
                      width: 50,
                      height: 33,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontFamily: "SofiaPro",
                            fontWeight: FontWeight.w400,
                            color: MyColors.primary,
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       RichText(
                         text: const TextSpan(
                           // Note: Styles for TextSpans must be explicitly defined.
                           // Child text spans will inherit styles from parent
                           style: TextStyle(
                             fontSize: 45.0,
                             fontWeight: FontWeight.w700,
                             color: Colors.black,
                             fontFamily: "SofiaPro",
                           ),
                           children: <TextSpan>[
                             TextSpan(text: 'Welcome to\n'),
                             TextSpan(
                                 text: 'FoodHub',
                                 style: TextStyle(
                                   color: MyColors.primary,
                                   fontFamily: "SofiaPro",
                                 )),
                             TextSpan(
                                 text:
                                 '\nYour favourite foods delivered\n fast at your door.',
                                 style: TextStyle(
                                   color: Color(0xff30384F),
                                   fontFamily: "SofiaPro",
                                   fontSize: 15,
                                   fontWeight: FontWeight.w400,
                                 )),
                           ],
                         ),
                       ),
                       SizedBox(
                         height: size.height * 0.1,
                       ),
                        Column(children: [
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            height: 1,
                            color: Colors.white,
                          ),

                          Text(
                            "Sign in with",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SofiaPro",
                            ),
                            textAlign: TextAlign.center,
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            color: Colors.white,
                            height: 1,
                          ),
                        ],
                          ),
                         SizedBox(
                        height: 10,
                          ),
                           Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FacebookLogin(),
                          SizedBox(
                            width: 20,
                          ),
                          GoogleLogin(),
                        ],
                          ),
                          SizedBox(
                        height: 10,
                          ),
                          InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SignUp.ROUTE_NAME);
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 45),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey.withOpacity(0.5),
                                  border: Border.all(color: Colors.white)),
                              child: Text(
                                "Start with email or phone",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                          ),
                          SizedBox(
                        height: 10,
                          ),
                          InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, LogIn.ROUTE_NAME);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                          ),
                        ],)
                      ],
                    ),
                  ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
