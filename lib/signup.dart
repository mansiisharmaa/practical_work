import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
   String email;
  Signup({required this.email,super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
   void initState() {
    super.initState();
    print("Email Id: ${widget.email.toString()}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: EdgeInsets.all(8.0),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [Text("SignUp")],
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "E-mail",
              labelText: "Enetr your E-mail",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Name",
              labelText: "Enetr your Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Enetr Different Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Submit")),
        ]
      ),)
    );
  }
}