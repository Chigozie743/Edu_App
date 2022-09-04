import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Home/home_page.dart';
import 'package:uidesign/View/Screen/Login/components/background1.dart';
import 'package:uidesign/View/Screen/Login/components/rounded_input_field.dart';
import 'package:uidesign/View/Screen/Login/components/text_field_container.dart';
import 'package:uidesign/View/Screen/Signup/signup_page.dart';
import 'package:uidesign/View/Screen/welcome/main_page.dart';
import 'package:uidesign/Model/components/already_have_an_account_check.dart';
import 'package:uidesign/Model/components/rounded_button.dart';
import 'package:uidesign/Model/components/rounded_password_field.dart';
import 'package:uidesign/constants.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  // // TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      minimum: const EdgeInsets.only(top: 25.0),
      child: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0),
          child: Expanded(

            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Image.asset(
                      "assets/images/sit_login.png",
                      height: size.height * 0.35,
                    ),
                    RoundedInputField(
                      hintText: "Your Email",
                      onChanged: (String value) {},
                    ),
                    RoundedPasswordField(
                      onChanged: (value) {},
                    ),
                    RoundedButton(
                      text: "LOGIN",
                      press: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => MainPage()));
                      },
                      size: size,
                    ),
                    SizedBox(height: size.height * 0.03),
                    AlreadyHaveAnAccountCheck(
                      press: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignUpPage();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
