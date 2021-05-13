/*
 * Tugas Dicoding Flutter Pemula
 * Created At 12-05-2021
 * @author Budiliauw87
 * @email budiliauw87@gmail.com
 */

import 'package:flutter/material.dart';
import 'package:flutter_dicoding_pemula/ui/MainPages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MainPage(),
    );
  }
}
