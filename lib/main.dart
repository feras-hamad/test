import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const SelectableText("first try"),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          height: 1000,
          width: 1000,
          color: Colors.blueAccent,
          padding: const EdgeInsets.all(190),
          child: const SelectableText(
            "yes",
            style: TextStyle(backgroundColor: Colors.red),
            
          ),
        ),
      ),
    );
  }
}
