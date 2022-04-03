import 'package:flutter/material.dart';
import 'package:side_bar/homepage.dart';

void main() {
  runApp( SideBar());
}

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
