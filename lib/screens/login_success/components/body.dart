import 'package:eticaret_app/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        Text(
          "Login Success",
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth! * 0.7,
            child: DefaultButton(
                text: "Back To Home",
                press: () {
                  //Home Page Yönlendirmesi yapılacak

                  Navigator.pushNamed(context, HomeScreen.routeName);
                })),
        const Spacer(),
      ],
    );
  }
}
