import 'package:eticaret_app/screens/complete_profile/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
