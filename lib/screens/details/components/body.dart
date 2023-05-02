import 'package:eticaret_app/components/default_button.dart';
import 'package:eticaret_app/models/Product.dart';
import 'package:eticaret_app/size_config.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';
import 'product_images.dart';
import 'products_description.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth! * 0.15,
                          right: SizeConfig.screenWidth! * 0.15,
                        ),
                        child: DefaultButton(
                          text: "Add to Cart",
                          press: () {},
                        ),
                      ),
                    ),
                    //const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
