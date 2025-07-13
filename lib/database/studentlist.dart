import 'package:flutter/material.dart';
import 'package:practical_work/database/student_dao.dart';
import 'package:practical_work/database/studentmodel.dart';

class Studentlist extends StatefulWidget {
  const Studentlist({super.key});

  @override
  State<Studentlist> createState() => _StudentlistState();
}

class _StudentlistState extends State<Studentlist> {
   var studentController = TextEditingController();
  var studentRoll = TextEditingController();

  List<StudentModel> studentList = [];

  @override
   void initState() {

    super.initState();
    print("IniState Function");
    setState(() {});
    getList();
  }

  void getList() async {
    studentList = await StudentDao().getstudent();
    setState(() {});
    print("StudentModel: $studentList");
    for (int i = 0; i < studentList.length; i++) {
      print("studentList ${studentList[i]}");
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${studentList[index].name}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Roll No.: ${studentList[index].rollNo}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),


                  Spacer(),
                  IconButton(onPressed: ()  {
                        studentController.text=studentList[index].name.toString();
                      showDialog(context: context, 
                        builder: (BuildContext context){
                          return Dialog(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Update Name"),
                                      SizedBox(height: 10),
                                      TextField(
                                        controller: studentController,
                                        decoration: InputDecoration(
                                          hintText: "Update the Name",
                                          labelText: "Update",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        controller: studentRoll,
                                        decoration: InputDecoration(
                                          hintText: "Update the Roll no",
                                          labelText: "Update",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      
                                      SizedBox(height: 10),
                                      ElevatedButton(
                                        onPressed: () async {
                                          if (studentController.text.isEmpty) {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(content: Text("Enter name to update")),
                                            );
                                          }else if(studentRoll.text.isEmpty){
                                             ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(content: Text("Enter roll no to update")),);
                                          }
                                           else {
                                             var studentModel = StudentModel(
                                                id: studentList[index].id,
                                                name: studentController.text.toString(),
                                                rollNo: studentRoll.text.toString());
                                           await StudentDao().updateStudent(studentModel);
                                           getList();
                                            setState(()  {
                                             
                                            
                                            });
                                            Navigator.of(context).pop();
                                          }
                                        },
                                        child: Text("Save"),
                                      ),
                                    ],
                                  )
                      );
                        });
                    
                  }, icon: Icon(Icons.edit)),

                        IconButton(
                        onPressed: () async{
                           StudentDao().deletStudent(int.parse(studentList[index].id.toString()));
                          getList();
                          setState(() {
                          
                          
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
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
            builder: (BuildContext context) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Add Student"),
                      SizedBox(height: 10),
                      TextField(
                        controller: studentController,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Enter Student Name",
                          label: Text("Enter Student Name"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: studentRoll,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Enter Student Name",
                          label: Text("Enter Student Name"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () async {
                          if (studentController.text.toString().isEmpty) {
                            print("Enter Name");
                          } else if (studentRoll.text.toString().isEmpty) {
                            print("Enter ROll NO");
                          } else {
                            var student_model = StudentModel(
                              name: studentController.text.toString(),
                              rollNo: studentRoll.text.toString(),
                            );
                            setState(() {});
                            await StudentDao().insertstudent(student_model);
                            getList();
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text("Save"),
                      ),
                  
                ]),
              ),);
              
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
   