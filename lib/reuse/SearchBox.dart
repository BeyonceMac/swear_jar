import 'package:flutter/material.dart';

//todo mongo db add existing friends/charities/Me
class SearchBox extends StatelessWidget {
  List<String> profile = ["pacalanita@gmail.com", "charity", "creator"];
  SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the container
        borderRadius: BorderRadius.circular(30), // Rounded corners
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Search',
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
              print('Search button pressed');
            },
          ),
        ],
      ),
    );
  }
}
