import 'package:flutter/material.dart';
import 'package:web_demo/screens/deliveright.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Deliveright(),
    );
  }
}
