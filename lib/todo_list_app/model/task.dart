class Task {
  String title;
  bool completed;

  Task.fromJson(Map json)
      : title = json['title'],
      completed = json['completed'];



  Map toJson() {
    return {
      'title': title,
      'completed' : completed,
    };
  }
}