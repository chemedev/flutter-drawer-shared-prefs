import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:awesome/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Page')),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity((0.7)),
              colorBlendMode: BlendMode.darken,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 32, 8, 0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: _usernameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Enter email",
                                  labelText: "Username"),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter password",
                                  labelText: "Password"),
                            ),
                            SizedBox(height: 20),
                            RaisedButton(
                              onPressed: () => {
                                Navigator.pushNamed(context, HomePage.routeName)
                              },
                              child: Text('Sign In'),
                              color: Colors.orange,
                              textColor: Colors.white,
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
