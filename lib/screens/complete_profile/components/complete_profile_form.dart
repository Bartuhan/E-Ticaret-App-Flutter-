import 'package:eticaret_app/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName, lastName, phoneNumber, address;

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildTextFormField(
              text: "First Name", error: kNameNullError, iconName: "User.svg"),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTextFormField(
              text: "Last Name", error: kNameNullError, iconName: "User.svg"),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTextFormField(
              text: "Phone Number",
              inputType: TextInputType.number,
              error: kPhoneNumberNullError,
              iconName: "Phone.svg"),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTextFormField(
              text: "Address",
              error: kAddressNullError,
              iconName: "Location point.svg"),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: "Complete Profile",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //Kullanıcı Bilgileri Database e kaydedilicek

                  //Anasayfa Yönlendirmesi Yapılacak

                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildTextFormField({
    required String text,
    required String error,
    required String iconName,
    TextInputType inputType = TextInputType.text,
  }) {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: error);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: error);
          return "";
        }
        return null;
      },
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: text,
        hintText: "Enter your $text",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/$iconName"),
      ),
    );
  }
}
