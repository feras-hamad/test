import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          height: 1000,
          width: 1000,
          padding: const EdgeInsets.all(190),
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            border: Border.all(
              color: Colors.black,
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.indigo,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
              BoxShadow(
                  color: Colors.amber,
                  offset: Offset(-20.0, 20.0),
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                  blurStyle: BlurStyle.outer),
            ],
          ),
          child: const SelectableText(
            "yes",
            style: TextStyle(backgroundColor: Colors.red),
          ),
        ),
      ),
    );
  }
}
