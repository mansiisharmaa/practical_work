import 'package:flutter/material.dart';
import 'package:practical_work/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   var emailController = TextEditingController();
   var passwordController = TextEditingController();
   var email = "email@gmail.com";
   var emailFocus = FocusNode();
   var passFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(" ", style: TextStyle(fontSize: 11),),),),
      body:Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Login" )],
          ),
          SizedBox(height: 10),
          TextField(
             keyboardType: TextInputType.emailAddress,
             textInputAction: TextInputAction.next,
             controller: emailController,
             focusNode: emailFocus,
            decoration: InputDecoration(
              hintText: "E-mail",
              labelText: "Enter your name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
        
            TextField(
               controller: passwordController,
               textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              focusNode: passFocus,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Enter your Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                  
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Signup(email: "Mansi@gmail.com",)));
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.blue)),
                  
                ),Text("Forget Password ?",style: TextStyle(color: Colors.blue)),
              
            ],
          ),
          ElevatedButton(onPressed: () {if (emailController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Email Id")));
                } else if (passwordController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Enter Password")));
                } else {
                  setState(() {
                    email = emailController.text.toString();
                    print(email);
                  });
                }
          }, child: Text("Login")),
        ]),
      ),
      
    );
  }
}