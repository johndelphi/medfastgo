import 'package:flutter/material.dart';
//brian's comment
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                'MedRX',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
