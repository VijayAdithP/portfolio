import 'package:flutter/material.dart';
import 'package:my_portfolio/Layout/Layout.dart';

void main() {
  runApp(const CoreApp());
}

class CoreApp extends StatelessWidget {
  const CoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Layout(),
    );
  }
}