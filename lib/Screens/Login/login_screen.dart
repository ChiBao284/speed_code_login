import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_code_login/Screens/Login/components/body_login.dart';
import 'package:speed_code_login/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BodyLogin(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              width: size.height * 0.3,
            ),
            TextFieldContainer(
              child: InputLogin(
                hintText: 'Your Email',
                icon: Icons.person,
                onChangeText: (value) {},
                secureText: false,
              ),
            ),
            TextFieldContainer(
              child: InputLogin(
                hintText: 'Your Email',
                icon: Icons.lock,
                onChangeText: (value) {},
                secureText: true,
                isPassword: true,
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: kPrimaryColor,
                ),
              ),
            )
          ]),
    ));
  }
}

// ignore: must_be_immutable
class InputLogin extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final Icon? suffixIcon;
  final bool isPassword;
  bool secureText;
  final ValueChanged<String> onChangeText;
  InputLogin(
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
  State<InputLogin> createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
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
          suffixIcon: widget.isPassword
              ? InkWell(
                  onTap: () {
                    setState(() {
                      widget.secureText = !widget.secureText;
                    });
                  },
                  child: Ink(
                      child: widget.secureText
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off)),
                )
              : Container(
                  width: 4,
                )),
      onChanged: widget.onChangeText,
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
