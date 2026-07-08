import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User {
  String name;
  bool selected;

  User({required this.name, required this.selected});

  @override
  String toString() {
    return "$name $selected";
  }
}

class UserDto {
  static const String userKey = "name";
  static const String selectedKey = "selected";

  static User fromJson(Map<String, dynamic> json) {
    String name = json[userKey];
    bool selected = json[selectedKey];

    return User(name: name, selected: selected);
  }

  static Map<String, dynamic> toJson(User user) {
    return {userKey: user.name, selectedKey: user.selected};
  }
}

class Repo {
  static Repo instance = Repo();

  final String url =
      "https://week9-ex1-default-rtdb.asia-southeast1.firebasedatabase.app/.json";

  Future<User> getData() async {
    Uri uri = Uri.parse(url);

    http.Response response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception("Fail ${response.statusCode}");
    }

    Map<String, dynamic> json = jsonDecode(response.body);

    return UserDto.fromJson(json);
  }

  Future<void> updateSelected(bool selected) async {
    Uri uri = Uri.parse(url);

    http.Response response = await http.patch(
      uri,
      body: jsonEncode({"selected": selected}),
    );

    if (response.statusCode != 200) {
      throw Exception("Fail to update selected");
    }
  }
}

enum AsyncState { loading, successful, error }

class SelectedButton extends StatefulWidget {
  const SelectedButton({super.key});

  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  Repo repo = Repo.instance;

  AsyncState state = AsyncState.loading;

  User? user;
  bool isSelect = false;

  @override
  void initState() {
    super.initState();
    fetchButton();
  }

  Future<void> fetchButton() async {
    setState(() {
      state = AsyncState.loading;
    });

    try {
      user = await repo.getData();
      isSelect = user!.selected;

      setState(() {
        state = AsyncState.successful;
      });
    } catch (e) {
      setState(() {
        state = AsyncState.error;
      });
    }
  }

  Future<void> onPress() async {
    setState(() {
      isSelect = !isSelect;
    });

    try {
      await repo.updateSelected(isSelect);
    } catch (e) {
      setState(() {
        isSelect = !isSelect;
      });
    }
  }

  Widget get content {
    switch (state) {
      case AsyncState.loading:
        return const Center(child: CircularProgressIndicator());

      case AsyncState.successful:
        return Center(
          child: SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: isSelect ? const Color.fromARGB(255, 48, 234, 135) : const Color.fromARGB(255, 89, 85, 85),
                elevation: 0,
              ),
              onPressed: onPress,
              child: Text(user!.name),
            ),
          ),
        );

      case AsyncState.error:
        return const Center(
          child: Text("Error", style: TextStyle(color: Colors.red)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: content);
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectedButton(),
    ),
  );
}
