import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome'),
        ),
        body: Container(
          height: 100,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.red,
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.yellow,
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
              ),
            ],
          ),
        ));
  }
}
