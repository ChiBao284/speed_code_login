import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_code_login/Screens/Login/components/body_login.dart';
import 'package:speed_code_login/Screens/Login/components/rounded_input_login.dart';
import 'package:speed_code_login/Screens/Login/components/text_filed_container.dart';
import 'package:speed_code_login/Screens/SignUp/sign_up.dart';
import 'package:speed_code_login/components/rounded_button.dart';
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
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              width: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            TextFieldContainer(
              child: RoundedInputLogin(
                hintText: 'Your Email',
                icon: Icons.person,
                onChangeText: (value) {},
                secureText: false,
              ),
            ),
            TextFieldContainer(
              child: RoundedInputLogin(
                hintText: 'Password',
                icon: Icons.lock,
                onChangeText: (value) {},
                secureText: true,
                isPassword: true,
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: kPrimaryColor,
                ),
              ),
            ),
            RoundedButton(
              text: 'LOGIN',
              background: kPrimaryColor,
              textColor: Colors.white,
              onPress: () {},
            ),
            const AlreadyAccount()
          ]),
    ));
  }
}

class AlreadyAccount extends StatelessWidget {
  final bool login;
  const AlreadyAccount({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Don\'t have an Account ? ' : 'Already have an account?',
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            login
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      },
                    ),
                  )
                : Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Text(
              login ? 'Sign up' : 'Sign In',
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
