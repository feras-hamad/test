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
      drawer: Drawer(
        child: SafeArea(
            child: Column(
          children: [
            ExpansionTile(
              title: const Text("Parent Category 1"),
              leading: const Icon(Icons.person), //add icon
              childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
              children: [
                ListTile(
                  title: const Text("Child Category 1"),
                  onTap: () {
                    //action on press
                  },
                ),

                ListTile(
                  title: const Text("Child Category 2"),
                  onTap: () {
                    //action on press
                  },
                ),
                //more child menu
              ],
            ),
            ExpansionTile(
              title: const Text("Parent Category 2"),
              leading: const Icon(Icons.person), //add icon
              childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
              children: [
                ListTile(
                  title: const Text("Child Category 1"),
                  onTap: () {
                    //action on press
                  },
                ),

                ListTile(
                  title: const Text("Child Category 2"),
                  onTap: () {
                    //action on press
                  },
                ),

                //more child menu
              ],
            )
          ],
        )),
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
