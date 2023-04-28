import 'package:eticaret_app/constants.dart';
import 'package:eticaret_app/size_config.dart';
import 'package:flutter/material.dart';

import 'icon_button_with_counter.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth! * 0.6,
                    //height: 50,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        //Search Product with Value ...

                        //asd
                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Product",
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(9),
                        ),
                      ),
                    ),
                  ),
                  IconButtonWithCounter(
                    svgSrc: "assets/icons/Cart Icon.svg",
                    //numOfItems: 9,
                    press: () {},
                  ),
                  IconButtonWithCounter(
                    svgSrc: "assets/icons/Bell.svg",
                    numOfItems: 1,
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
