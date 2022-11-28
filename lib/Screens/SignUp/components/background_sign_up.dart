import 'package:flutter/material.dart';

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
        padding: EdgeInsets.zero,
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
