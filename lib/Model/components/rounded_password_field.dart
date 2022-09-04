import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Login/components/text_field_container.dart';
import 'package:uidesign/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        // // controller: passwordController,
        autofocus: true,
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
