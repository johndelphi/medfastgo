import 'package:flutter/material.dart';
import 'package:medfastgo/pages/Home_Page.dart';

class LogOutPage extends StatelessWidget {
  const LogOutPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Log Out'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(58, 205, 50, 1),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomePage(), // Navigate to the HomePage
              ));
            },
            child: const Icon(Icons.arrow_back), // Use the back arrow icon
          ),
        ),
      );
}
