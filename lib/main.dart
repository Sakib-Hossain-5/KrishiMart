import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishimart/consts/strings.dart';
import 'package:krishimart/consts/styles.dart';
import 'package:krishimart/view/splash_screen/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async{

  await Supabase.initialize(
    url: 'https://elcwuzgheiqbsyrlqixg.supabase.co',
    anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVsY3d1emdoZWlxYnN5cmxxaXhnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc1NjM2MjIsImV4cCI6MjA1MzEzOTYyMn0.AKEtFjFv6_Yfqr2ZaJ93FQBG_Z_a3jN-STIJEPncwsI',
  );
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
