import 'package:eutrampoadmin/screens/home_screen.dart';
import 'package:eutrampoadmin/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EuTrampo Admin',
      home: HomeScreen(),
    );
  }
}
