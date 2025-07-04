import 'package:flutter/material.dart';

class Iconcom extends StatefulWidget {
  const Iconcom({super.key});

  @override
  State<Iconcom> createState() => _IconcomState();
}

class _IconcomState extends State<Iconcom> {
  List<String> nameList = [];
  var nameController = TextEditingController();
  // void updateItem(int index){
  //   nameController.text =nameList[index];
  // }
  // void deleteItem(int index){
  //   nameController.text =nameList[index];
  // }
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
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nameList[index]),
                      SizedBox(height: 5),
                      Text(nameList[index])
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          nameController.text = nameList[index]; // pre-fill
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Update Name"),
                                      SizedBox(height: 10),
                                      TextField(
                                        controller: nameController,
                                        decoration: InputDecoration(
                                          hintText: "Update the Name",
                                          labelText: "Update",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (nameController.text.isEmpty) {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(content: Text("Enter name to update")),
                                            );
                                          } else {
                                            setState(() {
                                              nameList[index] = nameController.text;
                                            });
                                            Navigator.of(context).pop();
                                          }
                                        },
                                        child: Text("Save"),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.edit),
                        iconSize: 24,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            nameList.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nameController.clear(); // Clear input before adding new
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Add Name"),
                      SizedBox(height: 10),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Enter Name",
                          labelText: "Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          if (nameController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Enter Name")),
                            );
                          } else {
                            setState(() {
                              nameList.add(nameController.text);
                            });
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text("Save"),
                      ),
                    ],
                  ),
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
