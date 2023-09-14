import 'package:flutter/material.dart';
import 'package:medfastgo/pages/Home_Page.dart';
import 'package:medfastgo/pages/Login_page.dart';
import 'package:medfastgo/pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedFast',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/HomePage': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
