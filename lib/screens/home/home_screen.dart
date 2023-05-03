import 'package:eticaret_app/components/custom_bottom_navbar.dart';
import 'package:eticaret_app/enum_state.dart';
import 'package:eticaret_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
