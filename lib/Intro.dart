import 'package:development/Login.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _stickmanAnimation;
  late Animation<Offset> _lineswhiteAnimation;
  late Animation<Offset> _buttonAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Duration of the animation
    );

    // Define slide-in animations
    _stickmanAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Start off-screen (to the left)
      end: Offset(0.0, 0.0), // End at the original position
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _lineswhiteAnimation = Tween<Offset>(
      begin: Offset(0.0, -1.0), // Start above the screen
      end: Offset(0.0, 0.0), // End at its original position
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Slide-up animation for the button
    _buttonAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0), // Start off-screen (below)
      end: Offset(0.0, 0.0), // End at its original position
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the controller
    super.dispose();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Login(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween2 = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween2),
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: 1500), // Adjust duration
    );
  }



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF56622),
              Color(0xFFF5592B),
              Color(0xFFEB4735),
              Color(0xFFFF0000),
              Color(0xFFAD2139),
              Color(0xFF9D1A37),
              Colors.black,
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            // Title Image Animation
            Positioned(
              top: screenHeight * 0.01,
              left: 0,
              right: 0,
              child: SlideTransition(
                position: _lineswhiteAnimation,
                child: Image.asset(
                  'assets/title.png',
                  fit: BoxFit.fill,
                  height: screenHeight * 0.45,
                  width: screenWidth,
                ),
              ),
            ),
            // Stickman Image Animation
            Positioned(
              bottom: screenHeight * 0.1,
              left: 0,
              right: screenWidth * 0.15,
              child: SlideTransition(
                position: _stickmanAnimation,
                child: Image.asset(
                  'assets/stickman.png',
                  fit: BoxFit.contain,
                  height: screenHeight * 0.5,
                  width: screenWidth * 0.8,
                ),
              ),
            ),
            // Black Box
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black,
                height: screenHeight * 0.15,
                width: screenWidth,
              ),
            ),
            // Slide-Up Button
            Positioned(
              bottom: screenHeight * 0.03,
              left: 0,
              right: 0,
              child: SlideTransition(
                position: _buttonAnimation,
                child: GestureDetector(
                  onVerticalDragEnd: (details) {
                    if (details.primaryVelocity! < 0) {
                      // Navigate on slide-up
                      Navigator.of(context).push(_createRoute());
                    }
                  },
                  onTap: () {
                    // Navigate on tap
                    Navigator.of(context).push(_createRoute());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: screenWidth * 0.08,
                      ),
                      SizedBox(height: 8), // Space between icon and text
                      Text(
                        "Get Started",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 2.0,
                          color: Colors.white,
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
