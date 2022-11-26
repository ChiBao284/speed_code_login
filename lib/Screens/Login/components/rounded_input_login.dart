import 'package:flutter/material.dart';
import 'package:speed_code_login/constants.dart';

class RoundedInputLogin extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final Icon? suffixIcon;
  final bool isPassword;
  bool secureText;
  final ValueChanged<String> onChangeText;
  RoundedInputLogin(
      {Key? key,
      required this.hintText,
      this.icon,
      required this.onChangeText,
      this.suffixIcon,
      this.secureText = false,
      this.isPassword = false})
      : super(
          key: key,
        );

  @override
  State<RoundedInputLogin> createState() => _RoundedInputLoginState();
}

class _RoundedInputLoginState extends State<RoundedInputLogin> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.secureText,
      decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          hintText: widget.hintText,
          enabledBorder: InputBorder.none,
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                widget.secureText = !widget.secureText;
              });
            },
            child: Ink(
                child: widget.isPassword
                    ? Icon(
                        widget.secureText
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        color: kPrimaryColor,
                      )
                    : Container(
                        width: 4,
                      )),
          )),
      onChanged: widget.onChangeText,
    );
  }
}
