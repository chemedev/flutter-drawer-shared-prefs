import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:awesome/pages/home_page.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
