import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_code_login/constants.dart';

class SocialButton extends StatelessWidget {
  final void Function()? onPress;
  final String image;
  const SocialButton({
    Key? key,
    this.onPress,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPress,
        child: Ink(
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryLightColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7,
                  offset: Offset(2, 2), // Shadow position
                )
              ],
            ),
            child: SvgPicture.asset(
              image,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
