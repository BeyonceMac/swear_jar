import 'package:development/reuse/ListItemsave.dart';
import 'package:development/reuse/Constants.dart';
import 'package:flutter/material.dart';

//todo make the buttons links add the to the correct firebase file
class SetUp1 extends StatefulWidget {
  @override
  State<SetUp1> createState() => _SetUp1State();
}

class _SetUp1State extends State<SetUp1> {
  List<ListItem> iconList = [
    ListItem(
        logo: 'assets/duolingo.png',
        example: '"I SWEAR to complete a lesson everyday for a month"',
        name: 'Duolingo App'),
    ListItem(
        logo: 'assets/fitness.png',
        example: '"I SWEAR to do 60 minute of exercise a day"',
        name: 'Fitness App'),
    ListItem(
        logo: 'assets/health.png',
        example: '"I SWEAR to do 10,000 steps a day"',
        name: 'Health App'),
    ListItem(
        logo: 'assets/leetcode.png',
        example: '"I SWEAR to complete a leetcode Medium everyday"',
        name: 'Leetcode'),
    ListItem(
        logo: 'assets/strava.png',
        example: '"I SWEAR to run 5 miles a week."',
        name: 'Strava'),
    ListItem(
        logo: 'assets/logo.png',
        example: '"I SWEAR to meal prep every week."',
        name: 'Build Your Own')
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int selectedIndex = 0;

    return Scaffold(
      backgroundColor: grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * .05,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * .086,
                ),
                children: [
                  TextSpan(
                    text: 'Lets ',
                  ),
                  TextSpan(
                    text: 'Break',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' those ',
                  ),
                  TextSpan(
                    text: 'Habits',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '!',
                  ),
                ],
              ),
            ),
            Text(
              'Lets Set Up a Jar',
              style: TextStyle(fontSize: screenWidth * .07),
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            Container(
              width: screenWidth * .8,
              height: screenHeight * .6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3,
                    )),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView.builder(
                itemCount: iconList.length,
                itemBuilder: (context, position) {
                  return InkWell(onTap: () => setState(() => selectedIndex = position),

                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
