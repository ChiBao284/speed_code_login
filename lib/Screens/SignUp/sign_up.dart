import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_code_login/Screens/Login/components/rounded_input_login.dart';
import 'package:speed_code_login/Screens/Login/components/text_filed_container.dart';
import 'package:speed_code_login/Screens/SignUp/components/background_sign_up.dart';
import 'package:speed_code_login/Screens/SignUp/components/or_divider.dart';
import 'package:speed_code_login/Screens/SignUp/components/social_button.dart';
import 'package:speed_code_login/Screens/login/login_screen.dart';
import 'package:speed_code_login/components/rounded_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundSignUp(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'REGISTER',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset('assets/icons/signup.svg'),
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
                secureText: false,
                isPassword: true,
              ),
            ),
            RoundedButton(
              text: 'REGISTER',
              onPress: () {},
            ),
            const AlreadyAccount(
              login: false,
            ),
            const OrDivider(),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialButton(
                    image: 'assets/icons/facebook.svg',
                    onPress: () {},
                  ),
                  SocialButton(
                    image: 'assets/icons/twitter.svg',
                    onPress: () {},
                  ),
                  SocialButton(
                    image: 'assets/icons/google-plus.svg',
                    onPress: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
