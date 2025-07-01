import 'package:flutter/material.dart';

class Dialogg extends StatefulWidget {
  const Dialogg({super.key});

  @override
  State<Dialogg> createState() => _DialoggState();
}

class _DialoggState extends State<Dialogg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogBox"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("Show text"),
              content: Text("hi"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("yes")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("no")),
              ],
            );
          });
        }, child: Text("Confirm")),
      ),
    );
  }
}