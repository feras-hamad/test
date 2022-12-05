import 'package:flutter/material.dart';
import 'test1/views/UIview.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: mainPage()
      ),
    );
  }
}
