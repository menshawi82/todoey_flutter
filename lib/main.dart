import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //! hide debug banner
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
