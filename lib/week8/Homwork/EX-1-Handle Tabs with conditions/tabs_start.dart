import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Green Screen")),
    );
  }
}

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 211, 19, 19),
      child: Center(child: Text("Red Screen")),
    );
  }
}

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 19, 41, 184),
      child: Center(child: Text("Blue screen")),
    );
  }
}

enum AppTabs { red, green, blue }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppTabs selectTab = AppTabs.red;

  void changeColor(AppTabs tab) {
    setState(() {
      selectTab = tab;
    });
  }

  Widget get content {
    if (selectTab == AppTabs.green) {
      return GreenScreen();
    } else if (selectTab == AppTabs.blue) {
      return BlueScreen();
    } else {
      return RedScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                changeColor(AppTabs.red);
              },
              child: Icon(Icons.home, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                changeColor(AppTabs.green);
              },
              child: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 121, 207, 40),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                changeColor(AppTabs.blue);
              },
              child: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 63, 24, 215),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
