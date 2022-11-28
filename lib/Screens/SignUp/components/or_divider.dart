import 'package:flutter/material.dart';
import 'package:speed_code_login/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(
            child: Divider(
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
          ),
          Align(
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 20,
              color: Colors.white,
              child: const Text(
                'OR',
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
