import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TaskData(),
    //  builder: (context)=>TaskData();,
      child: MaterialApp(
        /* hide debug banner .*/
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
