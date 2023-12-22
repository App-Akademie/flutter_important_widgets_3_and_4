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
          child: SnackBarWidget(),
        ),
      ),
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Hallo Welt'),
            duration: Duration(seconds: 15),
          ),
        );
      },
      child: const Text('Snack Bar anzeigen'),
    );
  }
}
