import 'package:flutter/material.dart';

class ListItem {
  String logo;
  String example;
  String name;
  ListItem({this.logo = '', this.example = '', this.name = ''});
}

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
        example: '"I SWEAR to do 60 minutes of exercise a day"',
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

  int selectedIndex = -1; // Declare selectedIndex as a class-level variable
  final ScrollController _scrollController = ScrollController(); // ScrollController for the scrollbar

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Scrollbar(
        interactive: true,
        trackVisibility: true,
        scrollbarOrientation: ScrollbarOrientation.left,
        thumbVisibility: true, // Ensures scrollbar is visible
        thickness: 10.0, // Width of the scrollbar
        radius: Radius.circular(10), // Rounded edges for the scrollbar
        controller: _scrollController, // Pass controller to Scrollbar
        child: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController, // Controller for the scrollable content
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.05),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.086,
                    ),
                    children: [
                      TextSpan(text: 'Let’s '),
                      TextSpan(
                        text: 'Break',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' those '),
                      TextSpan(
                        text: 'Habits',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '!'),
                    ],
                  ),
                ),
                Text(
                  'Let’s Set Up a Jar',
                  style: TextStyle(fontSize: screenWidth * 0.07),
                ),
                SizedBox(height: screenHeight * 0.05),
                Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 3),
                      bottom: BorderSide(color: Colors.black, width: 3),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Scrollbar(
                    thumbVisibility: true,
                    controller: _scrollController,
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: iconList.length,
                      itemBuilder: (context, position) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = position; // Update selected card index
                            });
                          },
                          child: Container(
                            width: 150,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: selectedIndex == position
                                      ? Colors.blue // Highlight selected card
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              color: selectedIndex == position
                                  ? Colors.blue.withOpacity(0.1) // Light blue background
                                  : Colors.white, // Default white background
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(iconList[position].logo),
                                    ),
                                    SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            iconList[position].name,
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: selectedIndex == position
                                                  ? Colors.blue
                                                  : Colors.black54,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 6.0),
                                          Text(
                                            iconList[position].example,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: selectedIndex == position
                                                  ? Colors.blueAccent
                                                  : Colors.grey,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Divider(
                  color: Colors.black, // Line color
                  thickness: 2.0, // Line thickness
                  indent: screenWidth * 0.08, // Left padding
                  endIndent: screenWidth * 0.08, // Right padding
                ),
                SizedBox(height: screenHeight * 0.025),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.07,
                    ),
                    children: [
                      TextSpan(text: 'Choose which '),
                      TextSpan(
                        text: 'Apps',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' to '),
                      TextSpan(
                        text: 'Lock',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'You can select zero or all these apps and they will remain locked until your habit is finished for the day',
                  style: TextStyle(fontSize: screenWidth * 0.04),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
