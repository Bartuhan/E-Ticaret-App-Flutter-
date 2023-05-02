import 'package:eticaret_app/constants.dart';
import 'package:eticaret_app/screens/sign_in/sign_in.dart';
import 'package:eticaret_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "We help people connect with store \naround Turkey",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show easy way to shop \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      //Sayfa Değişikilğini Uygular

                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"].toString(),
                      text: splashData[index]["text"].toString()),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    DefaultButton(
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      text: "Continue",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5, top: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
