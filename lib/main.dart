import 'package:eticaret_app/routs.dart';
import 'package:eticaret_app/screens/home/home_screen.dart';
import 'package:eticaret_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E Ticaret App",
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
