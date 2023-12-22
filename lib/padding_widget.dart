import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 8),
            Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 80,
                  height: 60,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  width: 80,
                  height: 60,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  width: 80,
                  height: 60,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  width: 80,
                  height: 60,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
