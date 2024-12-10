import 'package:flutter/material.dart';
import 'Screens/login_Screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:('LOGIN'),
      home:Scaffold(
        
        body:loginscreen()
      ),
    );
  }
}