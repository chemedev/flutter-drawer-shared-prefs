import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:awesome/pages/home_page.dart';
import 'package:awesome/pages/login_page.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: {
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePage()
        });
  }
}
