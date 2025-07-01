import 'package:flutter/material.dart';
import 'package:practical_work/ottppage.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Forget Password")],
            
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your Number/ E-mail",
              labelText: "ForgetPassword",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ottppage()),
                );
          }, child: Text("Enter")),
        ],
      ),),
      
    );
  }
}