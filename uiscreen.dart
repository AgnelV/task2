import 'package:flutter/material.dart';
import 'package:reubrotask2/screen2.dart';


class screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clickable Boxes '),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            padding: EdgeInsets.all(10.0),
            children: [
              ClickableBox(color: Colors.red, index: 0),
              ClickableBox(color: Colors.blue, index: 1),
              ClickableBox(color: const Color.fromARGB(255, 33, 243, 117), index: 1),
              ClickableBox(color: Colors.yellow, index: 3),
              ClickableBox(color: Colors.purple, index: 4),
              ClickableBox(color: const Color.fromARGB(255, 47, 33, 243), index: 5),
              ClickableBox(color: Color.fromARGB(255, 4, 237, 35), index: 6),
            ],
          ),
        ),
      ),
    );
  }
}

class ClickableBox extends StatelessWidget {
  final Color color;
  final int index;
 

  ClickableBox({required this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Screen2(selectedColor: color, selectedIndex: index),
          ),
        );
      },
      child: Container(
        color: color,
        
        child: Center(
          
        ),
      ),
    );
  }
}


