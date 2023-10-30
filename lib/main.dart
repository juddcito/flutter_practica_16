import 'package:flutter/material.dart';
import 'package:flutter_practica_16/src/listview_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.lightGreen
      ),
      debugShowCheckedModeBanner: false,
      title: 'Práctica 16 - TweenAnimation',
      home: ListViewPage()
    );
  }
}
