import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
              child: Column(
            children: <Widget>[
              Image.asset(
                'assets/bg.jpg',
                height: 400,
              ),
              SizedBox(
                height: 20,
              ),
              Text(myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter text',
                      labelText: 'Name'),
                ),
              )
            ],
          )),
        ),
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Juan Chemello'),
                accountEmail: Text('juanchemell@gmail.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80'))),
            ListTile(
                leading: Icon(Icons.person),
                title: Text('Juan Chemello'),
                subtitle: Text('Developer'),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('name');
                }),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('juanchemell@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState((() {}));
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
