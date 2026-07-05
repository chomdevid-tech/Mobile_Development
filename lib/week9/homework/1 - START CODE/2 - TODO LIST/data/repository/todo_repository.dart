import 'dart:convert';

import 'package:all_week/week9/homework/1%20-%20START%20CODE/2%20-%20TODO%20LIST/data/repository/repository_exception.dart';
import 'package:http/http.dart' as http;

import '../../models/todo.dart';

class TodoRepository {
  static final global = TodoRepository();
  // unique instance

  final String baseUrl =
      "https://week9-ex2-default-rtdb.asia-southeast1.firebasedatabase.app";

  //   final List<Todo> fakeTodos = [
  //     Todo(id: '1', title: 'Buy groceries', completed: false),
  //     Todo(id: '2', title: 'Finish Flutter homework', completed: true),
  //     Todo(id: '3', title: 'Call the dentist', completed: false),
  //     Todo(id: '4', title: 'Read 20 pages of a book', completed: true),
  //     Todo(id: '5', title: 'Go for a 30-minute walk', completed: false),
  //   ];

  Future<List<Todo>> getTodos() async {
    //  TODO
    //  Adapt the code to handle firebase data fetch
    //

    try {
      Uri url = Uri.parse(
        "$baseUrl/.json",
      );
      final response = await http.get(url);
      if (response.statusCode != 200) {
        throw Exception(
          "Failed to fetch todos. Status code: ${response.statusCode}",
        );
      }
      final data = jsonDecode(response.body);
      if (data == null) {
        return [];
      }
      final Map<String, dynamic> json = Map<String, dynamic>.from(data);
      List<Todo> todos = [];
      json.forEach((id, value) {
        final todo = Map<String, dynamic>.from(value);
        todos.add(
          Todo(id: id, title: todo['title'], completed: todo['completed']),
        );
     
      });
    } catch (e) {
      throw RepositoryException("error occurred: $e");
    }
  }

  //  TODO
  // Ensure the message is displayed on the UI if error occured
  //throw RepositoryException("No wifi !");

  Future<void> updateCompleted(String todoId, bool completed) async {
    //  TODO
    //  Adapt the code to handle firebase data fetch
    //
    






    int index = fakeTodos.indexWhere((e) => e.id == todoId);
    fakeTodos[index] = fakeTodos[index].copyWith(completed);

    return Future.delayed(Duration(microseconds: 1), () => true);
  }
}
