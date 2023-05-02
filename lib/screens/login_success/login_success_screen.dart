import 'package:eticaret_app/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: Text(
          "Login Success",
          style: TextStyle(
            color: const Color(0xFF8B8B8B),
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
