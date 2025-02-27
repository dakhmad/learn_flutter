import 'package:flutter/material.dart';
import 'package:learn_widget_flutter/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bismillah Belajar Widget',

      //test menetapkan themes pada MaterialApp
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Oswald"),
      home: HomePage(),
    );
  }
}
