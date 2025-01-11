import 'package:flutter/material.dart';
//todo fix the text resize features
class Textbox extends StatelessWidget {
  final String text;
  final double width;
  double textWidth = 12;

  Textbox({this.text = '', this.width = 1});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if(text.length * 3 > width / 8){
      textWidth = 7;
    }
    print(width/5);
    print(text.length);
    print(" ");

    return Container(
      width: width,
      child: TextField(
        style: TextStyle(fontSize: textWidth),
        controller: TextEditingController(),
        decoration: InputDecoration(
          filled: true, // Set filled to true
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.white, // Border color
              width: width, // Border width
            ),
          ),
        ),
      ),
    );
  }
}

