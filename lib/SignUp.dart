import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(SignupPage());

class SignupPage extends StatelessWidget {
  void _signupWithGoogle() {
    // Implement Google login functionality here
    print('Signing up with Google');
  }

  void _signupWithFacebook() {
    // Implement Facebook login functionality here
    print('Signing up with Facebook');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Re-enter Password',
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Perform signup action
              },
              child: Text('Next'),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Row(
                    children: [
                      Icon(Icons.android), // Alternative icon for Google
                      SizedBox(width: 8.0),
                    ],
                  ),
                  onPressed: _signupWithGoogle,
                ),
                SizedBox(width: 16.0),
                CupertinoButton(
                  child: Row(
                    children: [
                      Icon(Icons.facebook), // Alternative icon for Facebook
                      SizedBox(width: 8.0),
                    ],
                  ),
                  onPressed: _signupWithFacebook,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
