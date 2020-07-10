import 'package:awesome/utils/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../widgets/drawer.dart';
import 'login_page.dart';

class HomePageSB extends StatelessWidget {
  Future fetchData() async {
    final url = 'https://jsonplaceholder.typicode.com/photos';
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  Stream<List<String>> getStream() {
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index) => 'Item $index')]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Awesome'), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool('loggedIn', false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            })
      ]),
      body: StreamBuilder(
          stream: getStream(),
          // ignore: missing_return
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text('Fetch something'),
                );
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Some error ocurred'),
                  );
                }
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(snapshot.data[index]));
                  },
                  itemCount: snapshot.data.length,
                );
            }
          }),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState((() {}));
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
