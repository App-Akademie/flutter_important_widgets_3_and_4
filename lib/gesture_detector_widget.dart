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
        body: GestureDetectorWidget(),
      ),
    );
  }
}

class GestureDetectorWidget extends StatelessWidget {
  const GestureDetectorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        color: Colors.red,
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Box was tapped')),
            );
          },
          child: const Center(child: Text('Tap this for \na SnackBar')),
        ),
      ),
    );
  }
}
