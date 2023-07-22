import 'package:flutter/material.dart';
import 'package:test1/todo_list_app/ui/todo_list_tasks.dart';

import '../../drawe.dart';
import '../services/task_api.dart';


class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

   List tasksList = [];
   void getAllTasks() async {
    TaskApi.getTasks().then((response) {
      setState(() {
        tasksList = response;
      });
      print(response);
    });
  }

  @override
  void initState() {
    super.initState();
    getAllTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List API APP"),
        backgroundColor: const Color.fromARGB(255, 196, 223, 233),
        elevation: 5,
      ),
      drawer: const Drawe(),
      body: Container(
              color: Color.fromARGB(192, 223, 223, 223),
      child: ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TodoListTasks(
            task: tasksList[index],
          );
        },
      ),
      ),
    );
  }
}