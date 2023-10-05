import 'package:flutter/material.dart';
import 'package:medfastgo/pages/components/my_button.dart';
import 'package:medfastgo/pages/components/my_textfield.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});

  //password controller
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  //reset password method

 void resetPassword(BuildContext context) {
  // Get the values from the password and confirm password controllers
  String newPassword = passwordController.text;
  String confirmPassword = confirmController.text;

  // Check if the passwords match
  if (newPassword == confirmPassword) {
    // Passwords match, proceed with the password reset logic here

    // For example, you can show a success message and navigate to another screen:
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Password Reset'),
          content: Text('Password reset successful.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();

                // Navigate to the '\success' page
                Navigator.pushNamed(context, '/success');
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  } else {
    // Passwords don't match, show an error message
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Password Mismatch'),
          content: Text('The entered passwords do not match.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}



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
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                //Create new password
                Text(
                  'Create New Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 10),

                //password must be unique
                Text(
                  'Your new password  must be unique from those previously used.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
                const SizedBox(height: 25),

                //New password textfield
                MyTextField(
                  controller: passwordController, 
                  hintText: 'New Password'
                ),

                const SizedBox(height: 10),


                //confirm password textfield
                MyTextField(
                  controller: confirmController, 
                  hintText: 'Confirm Password'
                ),

                const SizedBox(height: 25),

                //reset password button
                MyButton(onTap: () {
                  resetPassword(context);
                }, buttonText: "Reset Password",
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}