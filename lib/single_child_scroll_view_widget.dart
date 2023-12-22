import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: SingleChildScrollViewWidget())),
    );
  }
}

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            color: Colors.purpleAccent,
          ),
          Container(
            height: 200,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
