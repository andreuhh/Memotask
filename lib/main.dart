import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todowithstatemanager/modules/task_data.dart';
import 'package:todowithstatemanager/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //create: (context) => TaskData(),
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskData(),
        )
      ],
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
