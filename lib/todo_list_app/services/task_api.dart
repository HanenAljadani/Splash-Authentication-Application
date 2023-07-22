import 'package:dio/dio.dart';

import '../model/task.dart';

class TaskApi {
  static Future<List> getTasks() async {
    Response response = await Dio()
        .get("https://jsonplaceholder.typicode.com/todos/");
    List data = response.data.map((i) => Task.fromJson(i)).toList();

    return data;
  }
}