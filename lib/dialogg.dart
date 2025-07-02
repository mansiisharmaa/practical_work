import 'package:flutter/material.dart';

class Dialogg extends StatefulWidget {
  const Dialogg({super.key});

  @override
  State<Dialogg> createState() => _DialoggState();
}

class _DialoggState extends State<Dialogg> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogBox"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
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
        ],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.grey,
      onPressed: (){
        showDialog(context: context, 
        builder: (BuildContext context)
        {
          return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("ADD PRODUCT",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 18,fontStyle: FontStyle.italic),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "ADD PRODUCT",
                    labelText: "ADD THE PRODUCT NAME",
                    border: OutlineInputBorder(),
                  ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(onPressed: (){}, child: Text("save")),
              ],
            ),
          ),
        );
      

        });
      }, child: Icon(Icons.add,color: Colors.blue),
      
      
      ),
    );
  }
}