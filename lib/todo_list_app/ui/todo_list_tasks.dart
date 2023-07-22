import 'package:flutter/material.dart';

import '../model/task.dart';

// ignore: must_be_immutable
class TodoListTasks extends StatefulWidget {
  Task task;
  TodoListTasks({super.key , required this.task});

  @override
  State<TodoListTasks> createState() => _TodoListTasksState();
}

class _TodoListTasksState extends State<TodoListTasks> {
  @override
  Widget build(BuildContext context) {
    return  Padding(

        padding: const EdgeInsets.all(10),

        child:   Container(
         decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(15),
          color: Color.fromARGB(222, 255, 255, 255), 
           boxShadow: const[
          BoxShadow(
          color:  Color.fromARGB(82, 95, 95, 95),
          blurRadius: 4,
           offset: Offset(4, 8), // Shadow position
      ),
    ],
        ),

        child: widget.task.completed == true?
        ListTile(
       
        leading: const Icon( Icons.check_box_outlined, ),
        title: Text(
          widget.task.title,
          style: const TextStyle(
            fontSize: 18,
            decoration: TextDecoration.lineThrough),
        )
        )
        : ListTile(
       
        leading: const Icon( Icons.check_box_outline_blank_outlined, ),
        title: Text(
          widget.task.title,
          style: const TextStyle(fontSize: 18),
        )
        ) 
          ),
   
        /*title: Text(
          widget.task.name,
          style: TextStyle(fontSize: 18),
        ),*/
    
    );
  }
}