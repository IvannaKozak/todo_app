import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;
  final longPressCallback;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 16.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}


// (checkboxState) {
//   setState(() {
//     isChecked = checkboxState;
//   });
// }

  // void checkboxCallback(checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

