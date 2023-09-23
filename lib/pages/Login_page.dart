import 'package:flutter/material.dart';
import 'package:medfastgo/pages/components/my_button.dart';
import 'package:medfastgo/pages/components/my_textfield.dart';
import 'package:medfastgo/pages/components/square_tile.dart';
import 'package:medfastgo/pages/components/normalTF.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //back button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () {
                        //Navigate back to the previous screen
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
          
                const SizedBox(height: 50),
          
                //welcome back you've been missed
                Text(
                  'Welcome back to MedRx',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),
          
                const SizedBox(height: 25),
                //username textfield
                normalTF(
                  controller: emailController,
                  hintText: 'Enter your email',
                  obscureText: false,
                ),
          
                const SizedBox(height: 10),
                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                 
                ),
          
                const SizedBox(height: 10),
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(height: 25),
                //sign in button
                MyButton(
                  onTap: signUserIn,
                  buttonText: "Login",
                ),
          
                const SizedBox(height: 50),
          
                //or continue with
                /*Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                    ],
                  ),
                ),*/

                const SizedBox(height: 50),
          
                //google + apple sign in buttons
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //google button
                    SquareTile(imagePath: 'lib/assets/google.png'),

                    SizedBox(width: 25),

                    //apple button
                    SquareTile(imagePath: 'lib/assets/apple.png'),
                  ],
                ),*/
          
                //not a member register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
