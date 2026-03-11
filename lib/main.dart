import 'package:flutter/material.dart';
import 'package:flutter_demo/home.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        backgroundColor: Colors.grey,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 50,
            color: Colors.blue,
            child: const Text('line1'),
          ),
          Container(
            width: 400,
            height: 60,
            color: Colors.green,
            child: const Text('line2'),
          ),
          Container(
            width: 500,
            height: 70,
            color: Colors.red,
            child: const Text('line3'),
          ),
          Container(
            width: 600,
            height: 80,
            color: Colors.pink,
            child: const Text('line4'),
          ),
        ],
      ),
    );
  }
}
