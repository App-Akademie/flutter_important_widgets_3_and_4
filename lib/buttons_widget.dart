import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Wrap(
          direction: Axis.vertical,
          spacing: 8,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
          ],
        ),
      ),
    );
  }
}
