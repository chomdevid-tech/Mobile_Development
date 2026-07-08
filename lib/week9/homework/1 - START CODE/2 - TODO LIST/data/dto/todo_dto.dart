import '../../models/todo.dart';

class TodoDto {
  static const title = "title";
  static const completed = "completed";

  static Todo fromJson(String id, Map<String, dynamic> json) {
    assert(json[title] is String);
    assert(json[completed] is bool);

    return Todo(id: id, title: json[title], completed: json[completed]);
  }

  static Map<String, dynamic> toJson(Todo todo) {
    return {title: todo.title, completed: todo.completed};
  }
}
