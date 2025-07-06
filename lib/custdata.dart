import 'package:flutter/material.dart';
import 'package:practical_work/customer.dart';

class Custdata extends StatefulWidget {
  const Custdata({super.key});

  @override
  State<Custdata> createState() => _CustdataState();
}

class _CustdataState extends State<Custdata> {
  List<Customer> nameList =[];
  var nameController = TextEditingController();
  var rolNoController = TextEditingController();
  
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(nameList[index].name.toString()),
                    Text(nameList[index].rollno.toString()),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){
                        nameController.text =nameList[index].name.toString();
                        showDialog(context: context, 
                        builder: (BuildContext context){
                          return Dialog(
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
                                              nameList[index] = nameController.text.toString() as Customer;
                                            });
                                            Navigator.of(context).pop();
                                          }
                                        },
                                        child: Text("Save"),
                                      ),
                                    ],
                                  ),

                            );
                        });
                      },
                       icon: Icon(Icons.edit)),
                        IconButton(
                        onPressed: () {
                          setState(() {
                            nameList.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  )
                  
                ],
             
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
                    TextField(
                      controller: rolNoController,
                      decoration: InputDecoration(
                        hint: Text("Enter RollNo"),
                        label: Text("RollNo"),
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
                        } else if (rolNoController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter Roll No")),
                          );
                        } else {
                          setState(() {});
                          nameList.add(
                            Customer(
                              nameController.text.toString(),
                              rolNoController.text.toString(),
                            ),
                          );
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

mixin icon {
  var edit;
}