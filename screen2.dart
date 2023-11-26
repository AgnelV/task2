import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final Color selectedColor;
  final int selectedIndex;

  Screen2({required this.selectedColor, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          padding: EdgeInsets.all(10.0),
          children: List.generate(7, (index) {
            return InkWell(
              onTap: () {
               if ( index!=selectedIndex) {
                  Navigator.pop(context); // Navigate back to the previous page if a grey box is clicked
                }
              },
              child: Container(
                color: index == selectedIndex ? selectedColor : Colors.grey,
                
              ),
            );
          }),
        ),
      ),
    );
  }
}