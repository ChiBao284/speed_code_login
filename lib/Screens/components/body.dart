import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_code_login/Screens/login/login_screen.dart';
import 'package:speed_code_login/components/rounded_button.dart';
import 'package:speed_code_login/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            RoundedButton(
              text: 'LOGIN',
              background: kPrimaryColor,
              textColor: Colors.white,
              onPress: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }))
              },
            ),
            RoundedButton(
              text: 'REGISTER',
              background: kPrimaryLightColor,
              textColor: Colors.black,
              onPress: () => print('login ne'),
            ),
          ]),
    ));
  }
}
