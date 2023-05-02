import 'package:eticaret_app/screens/cart/cart_screen.dart';
import 'package:eticaret_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:eticaret_app/screens/details/details_screen.dart';
import 'package:eticaret_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:eticaret_app/screens/home/home_screen.dart';
import 'package:eticaret_app/screens/login_success/login_success_screen.dart';
import 'package:eticaret_app/screens/otp/otp_screen.dart';
import 'package:eticaret_app/screens/sign_in/sign_in.dart';
import 'package:eticaret_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import 'screens/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  //Sayfa Rotaları burada bulunacak

  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
