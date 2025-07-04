import 'package:flutter/material.dart';

class Listt extends StatefulWidget {
  const Listt({super.key});

  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
   List<String> nameList = [];
  var nameController = TextEditingController();
  void updateItem(int index){
    nameController.text =nameList[index];
  }
  void deleteItem(int index){
    nameController.text =nameList[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom ListView"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              showDialog(context: context, 
              builder: (BuildContext context){
                return Dialog(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text("Add Name"),
                    SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hint: Text("Update the Name"),
                        label: Text("Update"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isEmpty) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Update")));
                        } else {
                          setState(() {});
                          nameList[index] = nameController.text.toString();
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("Save"),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                       onPressed: () {
                        setState(() {  
                        });
                        nameList.removeAt(index);
                          Navigator.of(context).pop();
                    },
                           child: Text("Delete"),
                           ),
                           

                    ],
                      
                ),
                );

              }
              );

          print("Index Value: $index");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(nameList[index])],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Add Name"),
                    SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hint: Text("Enter Name"),
                        label: Text("Name"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isEmpty) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Enter Name")));
                        } else {
                          setState(() {});
                          nameList.add(nameController.text.toString());
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("Save"),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}