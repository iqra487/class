import 'package:flutter/material.dart';
import 'package:myapp/screen1.dart';
import 'package:myapp/screen2.dart';
import 'package:myapp/screen3.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int current_tab = 0;
  var current_screen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen1(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    current_screen = Screen1();
                    current_tab = 0;
                  });
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  setState(() {
                    current_screen = Screen2();
                    current_tab = 1;

                  });
                },
                icon: Icon(Icons.favorite)),
            IconButton(
                onPressed: () {
                  setState(() {
                    current_screen = Screen3();
                    current_tab = 2;
                  });
                },
                icon: Icon(Icons.chat)),
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     BottomNavigationBar(items: items)
      //   ]

      // )
    );
  }
}
