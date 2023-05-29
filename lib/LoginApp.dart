import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "ItiDetails.dart";

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        platform: TargetPlatform.iOS, // Set the platform to iOS
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // You can add your login logic here
      print('Email: ${_emailController.text}');
      print('Password: ${_passwordController.text}');
      // Navigate to the Itinerary page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ItiDetails()),
      );
    }
  }

  void _loginWithGoogle() {
    // Implement Google login functionality here
    print('Logging in with Google');
  }

  void _loginWithFacebook() {
    // Implement Facebook login functionality here
    print('Logging in with Facebook');
  }

  void _forgotPassword() {
    // Implement forgot password functionality here
    print('Forgot password?');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: CupertinoTextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  placeholder: 'Email',
                  padding: EdgeInsets.all(12.0),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: CupertinoTextField(
                  obscureText: true,
                  controller: _passwordController,
                  placeholder: 'Password',
                  padding: EdgeInsets.all(12.0),
                ),
              ),
              SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: _forgotPassword,
                  child: Text(
                    'Forgot password?',
                    // style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              CupertinoButton.filled(
                child: Text('Login'),
                onPressed: _submitForm,
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
                    onPressed: _loginWithGoogle,
                  ),
                  SizedBox(width: 16.0),
                  CupertinoButton(
                    child: Row(
                      children: [
                        Icon(Icons.facebook), // Alternative icon for Facebook
                        SizedBox(width: 8.0),
                      ],
                    ),
                    onPressed: _loginWithFacebook,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
