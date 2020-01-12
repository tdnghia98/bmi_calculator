import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        accentColor: Color(0xFFEA1556),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xFF818491),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
