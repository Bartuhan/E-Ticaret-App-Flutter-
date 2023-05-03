import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
          onPressed: press,
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: MaterialStatePropertyAll(Color(0xFFF5F6F9)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon, width: 22, color: kPrimaryColor),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kTextColor,
              ),
            ],
          )),
    );
  }
}
