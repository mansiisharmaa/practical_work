
import 'package:flutter/material.dart';
import 'package:practical_work/database/studentlist.dart';
import 'package:practical_work/dropdown.dart';
import 'package:practical_work/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: Studentlist(),
     );
  }
}
