import 'package:practical_work/database/database_provider.dart';
import 'package:practical_work/database/studentmodel.dart';
import 'package:sqflite/sqflite.dart';

class StudentDao {
  Future<void>insertstudent(StudentModel studentmodel)async{
    var db=await DatabaseProvider().db;
    await db!.insert(

      "StudentModel",
      studentmodel.toMap(),
      conflictAlgorithm:ConflictAlgorithm.replace,
    );

  }
  Future<List<StudentModel>>getstudent()async{
    
    var db = await DatabaseProvider().db;
    final List<Map<String ,dynamic>> maps = await db!.query("StudentModel");
    return List.generate(maps.length,(i){
      return StudentModel.fromMap(maps[i]);

    });
  }
   Future<void>updateStudent(StudentModel studentmodel)async{
    var db=await DatabaseProvider().db;
    await db!.update(

      "StudentModel",
      studentmodel.toMap(),
      where: "id=?",
      whereArgs: [studentmodel.id],
     conflictAlgorithm:ConflictAlgorithm.replace,
    );
  }

   Future<void>deletStudent(int id)async{
    var db=await DatabaseProvider().db;
    await db!.delete("StudentModel",
    where: "id=?",
    whereArgs: [id]);
  }
}