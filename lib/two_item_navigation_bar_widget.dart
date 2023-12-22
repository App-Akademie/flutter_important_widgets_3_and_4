import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationBarWidget(),
    );
  }
}

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedIndex = 0;

  static const List<Widget> bodyWidgets = <Widget>[
    Text('Index 0: Home'),
    Text('Index 1: Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    const String title = 'Navigation Bar Widget Example';
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Center(child: bodyWidgets[selectedIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() {
          selectedIndex = index;
        }),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
