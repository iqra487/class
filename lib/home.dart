import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
      body: DefaultTabController(
          length: 2,
          child: TabBar(
            tabs: [
              Text(
                "data 1",
                style: TextStyle(color: Colors.black),
              ),
              Text("data 2", style: TextStyle(color: Colors.black)),
              TabBarView(children: [
                Container(color: Colors.red),
                Container(color: Colors.yellow,)
              ]
              ),
            ],
            
          )),
    );
  }
}
