import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Product(),
    );
  }
}

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  _Product createState() => _Product();
}

class _Product extends State<Product> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 200,
        height: 300,
        margin: const EdgeInsets.only(
          left: 20,
          top: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 5.0,
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
