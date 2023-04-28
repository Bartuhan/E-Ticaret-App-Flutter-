import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have a accoount?",
          style: TextStyle(fontSize: getProportionateScreenWidth(18)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            " Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}