import 'package:eticaret_app/constants.dart';
import 'package:eticaret_app/enum_state.dart';
import 'package:eticaret_app/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_navbar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Profile",
        style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600),
      )),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
