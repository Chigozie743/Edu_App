import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Login/components/rounded_input_field.dart';
import 'package:uidesign/View/Screen/Login/login_page.dart';
import 'package:uidesign/View/Screen/Signup/components/background2.dart';
import 'package:uidesign/View/Screen/Signup/components/or_divider.dart';
import 'package:uidesign/View/Screen/Signup/components/rounded_name_field.dart';
import 'package:uidesign/Model/components/already_have_an_account_check.dart';
import 'package:uidesign/Model/components/rounded_button.dart';
import 'package:uidesign/Model/components/rounded_password_field.dart';
// import 'package:uidesign/Screen/Login/components/body1.dart';
import 'package:uidesign/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      minimum: const EdgeInsets.only(top: 20.0),
      child: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 53.0),
          child: Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "SIGNUP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    Image.asset(
                      "assets/images/sign_up2.png",
                      height: size.height * 0.26,
                    ),
                    RoundedNameField(
                      hintText: "Name",
                      onChanged: (value) {},
                    ),
                    RoundedInputField(
                      hintText: "Your Email",
                      onChanged: (value) {},
                    ),
                    RoundedPasswordField(
                      onChanged: (value) {},
                    ),
                    RoundedButton(
                      text: "SIGNUP",
                      press: () {},
                      size: size,
                    ),
                    AlreadyHaveAnAccountCheck(
                      login: false,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                    ),
                    orDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.facebook_rounded,
                          color: kPrimaryColor,
                        ),
                      ],
                    )
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
