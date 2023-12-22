import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Header", style: TextStyle(fontSize: 20)),
              Divider(indent: 32, endIndent: 32),
              Text("Name", style: TextStyle(fontSize: 12)),
              Text("Email", style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
