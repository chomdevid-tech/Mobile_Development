import 'package:all_week/week9/homework/1%20-%20START%20CODE/1%20-%20BUTTON/Repository/repository.dart';
import 'package:all_week/week9/homework/1%20-%20START%20CODE/1%20-%20BUTTON/model/model.dart';

import 'package:flutter/material.dart';

import '../../utils/async_data.dart';
import 'button.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});
  @override
  State<MyScreen> createState() => _MyScreenState();
}
class _MyScreenState extends State<MyScreen> {
  final Repository repo = Repository();

  AsyncData<ButtonData> data = AsyncData.loading();
  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }
  void _fetchTodos() async {
    setState(() => data = AsyncData.loading());
    try {
      final result = await repo.fetchButtonData();
      setState(() => data = AsyncData.success(result));
    } on RepositoryException catch (e) {
      setState(() => data = AsyncData.error(e.message));
    }
  }
  @override
  Widget build(BuildContext context) {
    if (data.state == AsyncState.loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    } else {
      final button = data.value!;

      return Center(
          child: MyButton(
            data: button,
            onPressed: () {
              setState(() {
                button.selected = !button.selected;
              });
            },
          ),
      );
    }
  }



}




