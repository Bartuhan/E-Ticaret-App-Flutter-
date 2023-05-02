import 'package:eticaret_app/models/Product.dart';
import 'package:eticaret_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';

import 'components/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Text(arguments.product.rating.toString(),
              style: const TextStyle(fontWeight: FontWeight.w600))),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
