import 'package:eticaret_app/screens/otp/components/body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "OTP Verification",
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
