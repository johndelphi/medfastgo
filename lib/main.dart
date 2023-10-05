import 'package:flutter/material.dart';
import 'package:medfastgo/pages/Home_Page.dart';
import 'package:medfastgo/pages/Login_page.dart';
import 'package:medfastgo/pages/change_password.dart';
import 'package:medfastgo/pages/signUp.dart';
import 'package:medfastgo/pages/inventory_page.dart';
import 'package:medfastgo/pages/splash_screen.dart';
import 'package:medfastgo/pages/forgotPassword.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medfastgo/pages/successfulPassword.dart';
import 'firebase_options.dart';
import 'package:medfastgo/pages/brand_intro.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/brand':(context) => BrandIntroPage(),
        '/HomePage': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => signUpPage(),
        '/invent': (context) => InventoryPage(),
        '/password':(context) => forgotPassword(),
        '/change':(context) => ChangePassword(),
        '/success':(context) => SuccessfulPassword(),
      },
    );
  }
}
