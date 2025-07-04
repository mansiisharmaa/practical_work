import 'dart:io';

import 'package:flutter/material.dart';
import 'package:practical_work/Listt.dart';
import 'package:practical_work/customer.dart';
import 'package:practical_work/dwb.dart';
import 'package:practical_work/iconcom.dart';
import 'package:practical_work/listscreen.dart';
import 'package:practical_work/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: Iconcom(),
     );
  }
}
