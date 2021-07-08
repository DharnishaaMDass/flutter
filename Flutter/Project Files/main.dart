import 'package:flutter/material.dart';
import 'first.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trash Can",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: First(),
    );
  }
}
