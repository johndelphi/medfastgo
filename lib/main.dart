import 'package:flutter/material.dart';
import 'package:medfastgo/pages/Login_page.dart';
import 'package:medfastgo/pages/brand_intro.dart';
import 'package:medfastgo/pages/signUp.dart';
import 'package:medfastgo/pages/splash_screen.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedFast',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/brandIntro': (context) =>  BrandIntroPage(),
        '/login': (context) => LoginPage(),
       '/signUp': (context) => signUpPage(),
 
      },
    );
  }
}
