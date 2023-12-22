import 'package:flutter/material.dart';

void main() {
  runApp(const DividerApp());
}

class DividerApp extends StatelessWidget {
  const DividerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DividerPage(),
    );
  }
}

class DividerPage extends StatelessWidget {
  const DividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: ListTile(
                leading: Icon(Icons.favorite), title: Text('Favorite')),
          ),
          Divider(),
          Card(
            child: ListTile(
                leading: Icon(Icons.audiotrack), title: Text('Audiotrack')),
          ),
          Divider(color: Colors.red, thickness: 10, indent: 20, endIndent: 20),
          Card(
            child: ListTile(leading: Icon(Icons.abc), title: Text('abc')),
          ),
          Divider(color: Colors.blue, thickness: 5, indent: 10, endIndent: 40),
          Card(
            child: ListTile(leading: Icon(Icons.add), title: Text('add')),
          ),
        ],
      ),
    );
  }
}
