import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon_button.dart';
import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.preferredSize,
    required super.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
              iconData: Icons.arrow_back_ios_new,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  child,
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
