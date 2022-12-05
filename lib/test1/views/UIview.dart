import 'package:flutter/material.dart';
import '../controllers/appcontroller.dart';



class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: const Chip(
        label: Text('data'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
        ),
        shadowColor: Colors.blueAccent,
        elevation: 5,
      ),
    );
  }
}
