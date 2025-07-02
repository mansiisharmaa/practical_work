import 'package:flutter/material.dart';

class Listt extends StatefulWidget {
  const Listt({super.key});

  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to our page"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap:() {},
            leading: Icon(Icons.ac_unit_sharp),
            title: Text("mansi"),
            subtitle: Text("mca"),
          )
        ],
      ),
    );
  }
}