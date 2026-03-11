import 'package:flutter/material.dart';

class LineList extends StatefulWidget {
  const LineList({super.key});

  @override
  State<LineList> createState() => _LineListState();
}

class _LineListState extends State<LineList> {
  int row_1 = 0;
  int row_2 = 0;

  void onClick_1() {
    setState(() {
      row_1 = row_1 < 5 ? row_1 + 1 : 0;
    });
  }

  void onclick_2() {
    setState(() {
      row_2 = row_2 < 5 ? row_2 + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Row 1: '),
            Text("$row_1"),
            SizedBox(width: 30),
            for (int i = 0; i <= row_1; i++)
              Image.asset(
                'assets/img/purple.jpg',
                width: 30,
                color: Colors.blue[300],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: onClick_1,
              child: Text(
                "Click me",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Row 2: '),
            Text('$row_2'),

            for (int i = 0; i <= row_2; i++)
              Image.asset(
                'assets/img/wallpaper.jpg',
                width: 30,
                color: Colors.blue[300],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: onclick_2,
              child: Text(
                "Click me",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
