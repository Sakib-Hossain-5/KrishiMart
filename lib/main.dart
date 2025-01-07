import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishimart/consts/strings.dart';
import 'package:krishimart/consts/styles.dart';
import 'package:krishimart/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular
      ),
      home: const SplashScreen(),
    );
  }
}
