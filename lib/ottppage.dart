import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:practical_work/forget.dart';
class Ottppage extends StatefulWidget {
  const Ottppage({super.key});

  @override
  _OttppageState createState() => _OttppageState();
}

class _OttppageState extends State<Ottppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Enter your OTP",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
          print("ChNGE CODE: $code");
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Forget()), (Route<dynamic> route)=> false);
        }, // end onSubmit
    ),
            ],
          ),
        ),
      ),
    );
  }
}
