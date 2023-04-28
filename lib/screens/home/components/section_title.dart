import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold)),
          GestureDetector(
            onTap: press,
            child: Text(
              "See More",
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
