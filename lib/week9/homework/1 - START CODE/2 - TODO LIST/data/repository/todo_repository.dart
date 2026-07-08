import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/todo.dart';
import '../dto/todo_dto.dart';
import 'repository_exception.dart';

class TodoRepository {
  static final global = TodoRepository();

  final String baseUrl =
      'https://week9-ex2-default-rtdb.asia-southeast1.firebasedatabase.app';

  Future<List<Todo>> getTodos() async {
    Uri url = Uri.parse('$baseUrl/todos.json');

    try {
      http.Response response = await http.get(url);

     

      if (response.statusCode != 200) {
        throw RepositoryException('Failed to fetch todos');
      }

      final data = jsonDecode(response.body);

      if (data == null) {
        return [];
      }

      List<Todo> todos = [];

      if (data is List) {
        for (int i = 0; i < data.length; i++) {
          final item = data[i];

          if (item == null) {
            continue;
          }

          Todo todo = TodoDto.fromJson(
            i.toString(),
            Map<String, dynamic>.from(item),
          );

          todos.add(todo);
        }

        return todos;
      }

      throw RepositoryException('Invalid Firebase data format');
    } catch (e) {
      throw RepositoryException('Unexpected error');
    }
  }

  Future<void> updateCompleted(String todoId, bool completed) async {
    Uri url = Uri.parse('$baseUrl/todos/$todoId.json');

    try {
      http.Response response = await http.patch(
        url,
        body: jsonEncode({'completed': completed}),
      );

      if (response.statusCode != 200) {
        throw RepositoryException('Failed to update todo');
      }
    } catch (e) {
      throw RepositoryException('Unexpected error');
    }
  }
}
