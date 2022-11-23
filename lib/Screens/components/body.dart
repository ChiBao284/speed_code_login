import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Column(children: <Widget>[
      Text(
        'sddshvf',
      )
    ]));
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size screen
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          width: size.width * 0.3,
          child: Image.asset("assets/images/main_top.png"),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          width: size.width * 0.2,
          child: Image.asset("assets/images/main_bottom.png"),
        ),
        child
      ]),
    );
  }
}
