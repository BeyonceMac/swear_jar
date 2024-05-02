import 'package:flutter/material.dart';
//todo make the buttons links add the to the correct firebase fil
class ListItem{
  String logo;
  String example;
  String name;

  ListItem({this.logo = '', this.example = '', this.name = ''});

  @override
  Widget cardTemplate() {
    return GestureDetector(
      onTap: () {
        // Handle the click event here
        print('Card clicked');
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(color: Colors.white, height: 50, width: 50, child: Image.asset(logo)),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      example,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
