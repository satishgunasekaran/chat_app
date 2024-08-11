import 'package:flutter/material.dart';
import 'sidebar.dart';

class CommonLayout extends StatelessWidget {
  final Widget child;

  const CommonLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My App')),
      drawer: const Sidebar(),
      body: child,
    );
  }
}