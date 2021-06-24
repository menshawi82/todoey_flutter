import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;
  final  checkboxCallback;
  final titleCallback;


TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallback, this.titleCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),

      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
       onChanged:  checkboxCallback
      ),
      onLongPress: titleCallback,
      );

  }
}

