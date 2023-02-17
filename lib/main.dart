import 'package:cryptolist/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final goldenTheme = ThemeData(
      primaryColor: Colors.amber,
    );

    return MaterialApp(
      home: HomePage(),
      theme: goldenTheme,
    );
  }
}
