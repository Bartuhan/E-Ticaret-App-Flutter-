import 'package:eticaret_app/screens/cart/cart_screen.dart';
import 'package:eticaret_app/screens/home/components/search_field.dart';
import 'package:eticaret_app/size_config.dart';
import 'package:flutter/material.dart';

import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            //numOfItems: 9,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 1,
            press: () {},
          ),
        ],
      ),
    );
  }
}
