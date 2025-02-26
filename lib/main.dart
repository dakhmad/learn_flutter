import 'package:flutter/material.dart';
import 'package:learn_widget_flutter/widgets/textfield_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bismillah Belajar Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextfieldWidget(),
    );
  }
}
