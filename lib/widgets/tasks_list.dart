import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem=taskData.tasks[index];
            return TaskTile(
              isChecked: taskItem.isDone,
              taskTitle: taskItem.name,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTask(taskItem);
              },
                titleCallback:(){
                  taskData.deleteTask(taskItem);
                }
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
