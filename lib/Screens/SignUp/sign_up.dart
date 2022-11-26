import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_code_login/Screens/Login/components/rounded_input_login.dart';
import 'package:speed_code_login/Screens/Login/components/text_filed_container.dart';
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
            Stack(
              children: [
                Container(
                  height: 20,
                  alignment: Alignment.bottomCenter,
                  child: const Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.red,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 20,
                    color: Colors.white,
                    child: const Text('OR'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundSignUp extends StatelessWidget {
  final Widget child;
  const BackgroundSignUp({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: size.height * 0.2,
              )),
          Positioned(
              left: 0,
              bottom: -10,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.height * 0.125,
              )),
          child
        ]));
  }
}
