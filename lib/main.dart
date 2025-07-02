import 'package:flutter/material.dart';
import 'package:practical_work/dialogg.dart';
import 'package:practical_work/dwb.dart';
import 'package:practical_work/forget.dart';
import 'package:practical_work/login.dart';
import 'package:practical_work/ottppage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: Dwb(),
     );
  }
}
