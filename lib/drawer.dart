import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
