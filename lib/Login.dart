import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

const Color redTheme = Color(0xFFFF5D5D);

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6F0000),
              Color(0xFF150000),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // White Rounded Container
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Toggle Switch for Login/Sign Up
                        ToggleSwitch(
                          minWidth: 90.0,
                          cornerRadius: 20.0,
                          activeBgColors: [
                            [redTheme],
                            [redTheme]
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.red[50],
                          inactiveFgColor: redTheme,
                          initialLabelIndex: _selectedIndex,
                          totalSwitches: 2,
                          labels: ['Login', 'Sign Up'],
                          radiusStyle: true,
                          onToggle: (index) {
                            setState(() {
                              _selectedIndex = index!;
                            });
                          },
                        ),
                        SizedBox(height: 30),

                        // Dynamically Render Login or Sign Up Form
                        if (_selectedIndex == 0)
                          _buildLoginForm()
                        else
                          _buildSignUpForm(),

                        SizedBox(height: 30),

                        // Or Divider
                        Text(
                          "or",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),

                        // Social Media Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/google.png'),
                              iconSize: 40,
                            ),
                            SizedBox(width: 20),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/twitter.png'),
                              iconSize: 40,
                            ),
                            SizedBox(width: 20),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/facebook.png'),
                              iconSize: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Build Login Form
  Widget _buildLoginForm() {
    return Column(
      children: [
        // Email or Username Field
        TextField(
          decoration: InputDecoration(
            hintText: "Email or Username",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 20),

        // Password Field
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(height: 10),

        // Forgot Password
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 30),

        // Login Button
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Homescreen');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: redTheme,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
          ),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  // Build Sign Up Form
  Widget _buildSignUpForm() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "UserName",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 20),
        // Email Field
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 20),

        // Password Field
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 20),

        // Confirm Password Field
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Confirm Password",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 30),

        // Sign Up Button
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/SetUp1');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: redTheme,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
          ),
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
