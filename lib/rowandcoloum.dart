import 'package:flutter/material.dart';

  class Rowandcoloum extends StatefulWidget {
    const Rowandcoloum({super.key});

    @override
    State<Rowandcoloum> createState() => _RowandcoloumState();
  }

  class _RowandcoloumState extends State<Rowandcoloum> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: 
        Center(
          child:
        
        Text("coloum",)),backgroundColor: Colors.blue ,),
    body: SingleChildScrollView(
      child: Column(children: [
        Text("mansi",
        style: TextStyle(backgroundColor: Colors.red,)
        ,
        ),
      Text("sharma", 
      style: TextStyle(color: Colors.purple,fontSize: 20,)),
        ],),
    )

      );
    }
  }