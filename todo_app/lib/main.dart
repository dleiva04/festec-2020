import 'package:flutter/material.dart';
import 'package:todo_app/screens/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
