import 'package:flutter/material.dart';
import 'Login.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.deepOrangeAccent,
                Colors.redAccent,
                Colors.red,
                Colors.black
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Center(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Swear Jar",
                    style: TextStyle(
                      fontFamily: 'Permanent_Marker',
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 20, // Empty space with a width of 20 pixels
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/stickman.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Stack(children: [
                    Container(
                      color: Colors.black,
                      width: 500,
                      height: 100,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                  color: Colors.white,
                                  width:
                                  2.0), // Adjust the color and width as needed
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    50.0), // Adjust the value for the oval shape
                              ),
                            ),
                          )),
                    ),
                  ]),
                ],
              ),
              Container(
                width: 600,
                height: 540,
                child: Image.asset(
                  'assets/lineswhite.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}