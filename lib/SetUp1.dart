import 'package:development/reuse/ListItem.dart';
import 'package:flutter/material.dart';
//todo make the buttons links add the to the correct firebase file
class SetUp1 extends StatelessWidget {
  List<ListItem> iconList = [
    ListItem(
        logo: 'assets/duolingo.png',
        example: 'I SWEAR to complete a lesson everyday for a month',
        name: 'Duolingo App'),
    ListItem(
        logo: 'assets/fitness.png',
        example: 'I SWEAR to do 60 minute of exercise a day',
        name: 'Fitness App'),
    ListItem(
        logo: 'assets/health.png',
        example: 'I SWEAR to do 10,000 steps a day',
        name: 'Health App'),
    ListItem(
        logo: 'assets/leetcode.png',
        example: 'I SWEAR to complete a leetcode Medium everyday',
        name: 'Leetcode'),
    ListItem(
        logo: 'assets/strava.png',
        example: 'I SWEAR to run 5 miles a week.',
        name: 'Strava')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF2F2F2FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
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
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView.builder(
                itemCount: iconList.length,
                itemBuilder: (context, index) {
                  final objectItem = iconList[index];
                  return objectItem.cardTemplate();
                },
              ),

            ),

          ],
        ),
      ),
    );
  }

}
