import 'package:flutter/material.dart';
import 'package:medfastgo/pages/splash_screen.dart';
//brian's comment
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
