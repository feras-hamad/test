import 'package:flutter/material.dart';
import 'test1/views/UIview.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey();
    return MaterialApp(
      home: Scaffold(
          drawerScrimColor: Colors.blue,
          persistentFooterButtons: [Text('data')],
          appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text('Title'),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: IconButton(
                    icon: Icon(Icons.dehaze),
                    onPressed: () {
                      if (_scaffoldKey.currentState!.isEndDrawerOpen == false) {
                        _scaffoldKey.currentState!.openEndDrawer();
                      }else{
                        _scaffoldKey.currentState!.closeEndDrawer();
                      }
                    }),
                )
              ],
              ),
          body: Scaffold(
            key: _scaffoldKey,
            body: mainPage(),
            endDrawer: Drawer(
              backgroundColor: Color.fromARGB(255, 253, 253, 253),
              child: ListView(
                children: const [
                  ExpansionTile(
                      title: Text('title 1'),
                      childrenPadding: EdgeInsets.only(left: 5),
                      children: [
                        ListTile(
                            title: Text('title 2.0'), focusColor: Colors.amber),
                        ListTile(
                          title: Text('title 2.1'),
                        ),
                      ]),
                  ExpansionTile(
                      title: Text('title 1.1'),
                      childrenPadding: EdgeInsets.only(left: 15),
                      children: [
                        ListTile(
                          title: Text('title 2.0'),
                        ),
                        ListTile(
                          title: Text('title 2.1'),
                        ),
                      ]),
                  ExpansionTile(
                      title: Text('title 1.2'),
                      childrenPadding: EdgeInsets.only(left: 25),
                      children: [
                        ListTile(
                          title: Text('title 2.0'),
                        ),
                        ListTile(
                          title: Text('title 2.1'),
                        ),
                      ])
                ],
              ),
            ),
          )),
    );
  }
}
