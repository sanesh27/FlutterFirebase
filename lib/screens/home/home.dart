import 'package:flutter/material.dart';
import 'package:flutter_brew/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _user = new AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('Logout'),
              onPressed: () async {
                await _user.signOut();
              },
          ),
        ],
      ),
    );
  }
}