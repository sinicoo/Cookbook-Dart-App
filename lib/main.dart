import 'package:flutter/material.dart';
import 'package:cookbook/FrontPage.dart';

void main() {
  runApp(CookBook());
}

class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookBook',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: FrontPage(),
    );
  }
}
