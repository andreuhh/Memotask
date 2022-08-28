import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Buy Milk",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(isChecked, checkBoxCallBack),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;

  final void Function(bool?) toggleBoxState;

  TaskCheckBox(this.checkboxState, this.toggleBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleBoxState,
    );
  }
}
