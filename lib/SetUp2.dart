import 'package:development/reuse/Constants.dart';
import 'package:development/reuse/MyDropdown.dart';
import 'package:development/reuse/TextBox.dart';
import 'package:flutter/material.dart';
import 'package:development/reuse/SearchBox.dart';

class SetUp2 extends StatefulWidget {
  String logo;
  String example;
  String name;

  SetUp2({this.logo = '', this.example = '', this.name = ''});

  @override
  State<SetUp2> createState() => _SetUp2State();
}

class _SetUp2State extends State<SetUp2> {
  @override
  Widget build(BuildContext context) {
    List<String> time = ["days", "month"];
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: grey,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Accountability Buddy",
                    style: TextStyle(fontSize: 30),
                  ),
                  SearchBox(),
                ],
              ),
              SizedBox(height: screenHeight * .02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Habit", style: TextStyle(fontSize: 30)),
                  Text(widget.example),
                  Textbox(text: 'SFSDF', width: screenWidth),
                ],
              ),
              SizedBox(height: screenHeight * .02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Demerit", style: TextStyle(fontSize: 30)),
                  Text(widget.example),
                  Textbox(text: '\$1.00', width: screenWidth * .5),
                ],
              ),
              SizedBox(height: screenHeight * .02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Duration", style: TextStyle(fontSize: 30)),
                  Text(widget.example),
                  Row(
                    children: [
                      Textbox(text: '1', width: screenWidth * .2),
                      MyDropdown(itemList: time),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Duration", style: TextStyle(fontSize: 30)),
                  Text(widget.example),
                  Row(
                    children: [
                      Textbox(text: 'Card Number', width: screenWidth * .3),
                      Textbox(text: 'Name on Card', width: screenWidth * .3),
                      Textbox(text: 'MM/YY', width: screenWidth * .15),
                      Textbox(text: 'CVV', width: screenWidth * .15),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
