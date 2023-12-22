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
          // a button that evokes an alert dialog
          child: DialogWidget(),
        ),
      ),
    );
  }
}

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const DialogContent();
          },
        );
      },
      child: const Text('Dialog anzeigen'),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Titel'),
      content: const Text('Text des Dialogs'),
      actions: <Widget>[
        TextButton(
          child: const Text('Ja'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
