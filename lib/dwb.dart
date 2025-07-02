import 'package:flutter/material.dart';

class Dwb extends StatefulWidget {
  const Dwb({super.key});

  @override
  State<Dwb> createState() => _DwbState();
}

class _DwbState extends State<Dwb> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
   
      ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(" Dialog"),
                      content: Text( "Enter Number "),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              
                            });
                            number++;
                            print("Increament value: $number");
                            Navigator.of(context).pop();
                          },
                          child: Text("+"),
                          
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                            });
                            number--;
                            Navigator.of(context).pop();
                          },
                          child: Text("-"),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              
                            });
                            number=0;
                            Navigator.of(context).pop();
                          },
                          child: Text("0"),
                        ),

                      
                      ],
                    );
                  },
                );
              },
              child: Text("Click"),
          ),
         Text( number> 0? number.toString() : "Value is Less then 0" )
        ],
      ),
    );
  }
}