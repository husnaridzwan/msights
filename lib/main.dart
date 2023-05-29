import 'package:flutter/material.dart';
import 'LoginApp.dart';
import 'SignUp.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M-Sights',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Color(0xFF8EA58A)),
      ),
      home: MainPageContent(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(), // Add this line
      },
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List<double> strengths = [0.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (final double strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}

class MainPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'M-Sights',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 170),
            SizedBox(
              //  login button
              child: Container(
                width: 200,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'login',
                    style: TextStyle(
                        fontSize: 16), // Adjust the font size as needed
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              //   width: double.infinity,
              child: Container(
                width: 200,
                height: 30,
                // Adjust the width as needed
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFCEE2CB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the border radius as needed
                    ),
                  ),
                  child: Text(
                    'sign up',
                    style: TextStyle(
                        fontSize: 16), // Adjust the font size as needed
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text('or login with'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Perform Facebook login action
                  },
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                ),
                SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Perform Google login action
                  },
                  icon: Icon(Icons.android),
                  label: Text('Google'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
