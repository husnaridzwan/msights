import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ItiDetails());

class ItiDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        platform: TargetPlatform.iOS,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24),

              Text(
                'Your specialised itinerary .',
                //   style: GoogleFonts.inter(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    //1 Day
                    Row(
                      children: [
                        Text(
                          'Day 1',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.black,
                        ),
                      ],
                    ),

                    //1 Place Name
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Text('8AM NAMSAN TOWER'),
                        SizedBox(width: 85),
                        Icon(Icons.star_border_outlined),
                      ],
                    ),
                    //1 Car Icon + Directions
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(Icons.directions_car),
                        SizedBox(width: 8),
                        Text('click for details'),
                      ],
                    ),
                    //2 Place Name
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Text('2PM ITAEWON MOSQUE'),
                        SizedBox(width: 72),
                        Icon(Icons.star_border_outlined),
                      ],
                    ),
                    //2 Car Icon + Directions
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(Icons.directions_car),
                        SizedBox(width: 8),
                        Text('click for details'),
                      ],
                    ),
                    //3 Place Name
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Text('3PM LOTTE WORLD'),
                        SizedBox(width: 100),
                        Icon(Icons.star_border_outlined),
                      ],
                    ),
                    //3 Car Icon + Directions
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(Icons.directions_car),
                        SizedBox(width: 8),
                        Text('click for details'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle save button press
                    },
                    child: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCEE2CB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle regenerate button press
                    },
                    child: Text('Regenerate'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCEE2CB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 80),
              //menu bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.home, size: 40),
                    onPressed: () {
                      // Handle Home icon press
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.apps, size: 40),
                    onPressed: () {
                      // Handle Tool icon press
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.bookmark, size: 40),
                    onPressed: () {
                      // Handle Saved icon press
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person, size: 40),
                    onPressed: () {
                      // Handle Profile icon press
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
