import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('task one'),
      trailing: Checkbox(value: false,onChanged: null,),
    );
  }
}
