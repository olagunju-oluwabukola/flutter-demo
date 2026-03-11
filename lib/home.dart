import 'package:flutter/material.dart';
import 'package:flutter_demo/line-list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10),
            color: Colors.blue[100],
            child: Text(
              "Line 1",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10),
            color: Colors.blue[200],
            child: Text(
              "Line 2",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10),
            color: Colors.blue[300],
            child: LineList(),
          ),
        ],
      ),
    );
  }
}
