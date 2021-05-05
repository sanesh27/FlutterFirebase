import 'package:flutter/material.dart';
import 'package:flutter_brew/screens/authenticate/authentication.dart';
import 'package:flutter_brew/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_brew/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    //return either Home or Authenticate widget
    if (user == null) {
    return Authenticate();
    } else {
      return Home();
    }
  }
}
