import 'package:flutter/material.dart';


class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '/Users/johnmichael/medfastgo/lib/assets/Medrxlogo.png', // Replace with your image file path
              ),
              SizedBox(height: 20), // Optional: Add some spacing between the logo and text
              Text(
                'MedFast',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      );
  }
}