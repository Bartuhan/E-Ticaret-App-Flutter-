import 'package:eticaret_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:eticaret_app/screens/login_success/login_success_screen.dart';
import 'package:eticaret_app/screens/sign_in/sign_in.dart';
import 'package:eticaret_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  //Sayfa Rotaları burada bulunacak

  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
};
