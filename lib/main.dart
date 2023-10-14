import 'package:flutter/material.dart';
import 'package:medfastgo/pages/Login_page.dart';
import 'package:medfastgo/pages/VerificationPage.dart';
import 'package:medfastgo/pages/home_page.dart';
import 'package:medfastgo/pages/signUp.dart';
import 'package:medfastgo/pages/inventory_page.dart';
import 'package:medfastgo/pages/splash_screen.dart';
import 'package:medfastgo/pages/forgotPassword.dart';
import 'package:medfastgo/pages/successfulPassword.dart';
void main() async {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedFast',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) =>  SplashScreen(),
        '/HomePage': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => signUpPage(),
        '/invent': (context) => InventoryPage(),
        '/password':(context) => forgotPassword(),
         "brandIntro": (context) => SplashScreen(),
        '/success':(context) => SuccessfulPassword(),
        '/verify':(context) => VerificationPage(),
      },
    );
  }
}