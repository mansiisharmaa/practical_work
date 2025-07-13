import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
   var list = ["Mansi", "Kajal", "Priya", "Neha"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Drop Menu"), backgroundColor: Colors.blueAccent),
      body: Column(
        children: [
          Center(
            child: DropdownMenu(
              width: double.infinity,
              hintText: "Select value",
              label: Text("Select Value"),
              enableSearch: true,
              onSelected: (value) {
                print("Selected Value is: $value");
              },

              dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((
                String name,
              ) {
                return DropdownMenuEntry(value: name, label: name.toString());
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                children: [
                  Text(
                    "The analyzer produces this diagnostic when a class name is used to access an instance field.",
                  ),
                  Image.asset(
                    "assests/main/5.jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}