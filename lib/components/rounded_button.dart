import 'package:flutter/material.dart';
import 'package:speed_code_login/constants.dart';

class RoundedButton extends StatelessWidget {
  final Color? textColor, background;
  final void Function()? onPress;
  final String text;
  const RoundedButton({
    Key? key,
    this.textColor = Colors.white,
    this.background = kPrimaryColor,
    this.onPress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: onPress,
          child: Ink(
            width: size.width * 0.8,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: background,
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ),
          )),
    );
  }
}
