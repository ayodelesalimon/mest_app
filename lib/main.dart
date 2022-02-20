import 'package:flutter/material.dart';
import 'screen/tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mest App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gotham",
      ),
      home: NavBarScreen(),
    );
  }
}

