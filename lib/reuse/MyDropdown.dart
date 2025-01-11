import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {

  final List<String> itemList; // List of items for the dropdown menu
  MyDropdown({Key? key, required this.itemList}) : super(key: key);
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {


  @override
  Widget build(BuildContext context) {
    String selectedValue = widget.itemList[0]; // Preselected value
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(10), // Border radius
        border: Border.all(color: Colors.grey), // Optional border color
      ),

      child: DropdownButton<String>(
        dropdownColor: Colors.white, // Dropdown menu background color
        value: selectedValue, // Preselected value
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: widget.itemList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

  }
}
