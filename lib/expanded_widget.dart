import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              const Icon(Icons.face),
              const Text("Expanded"),
              Expanded(
                child: Container(color: Colors.red, height: 20),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.green, height: 20),
              ),
              const Icon(Icons.add_task_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
