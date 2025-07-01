import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State <Firstpage> createState() =>  FirstpageState();
}


class  FirstpageState extends State <Firstpage> {

@override void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     //   backgroundColor: CupertinoTextField.kMisspelledSelectionColor,
        title: Center(child: Text("Hello")),
      ),
       body: Center(child: Text("    Hi everyone\nWelcome to flutter"))
    );
  }
}