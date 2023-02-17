import 'package:cryptolist/home_page.dart';
import 'package:flutter/material.dart';
import 'loading_screen.dart'; // importa el archivo loading_screen.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final goldenTheme = ThemeData(
      primaryColor: Colors.amber,
    );

    return MaterialApp(
      home: LoadingScreen(), // muestra la pantalla de carga al principio
      routes: {
        '/home': (context) =>
            HomePage(), // muestra la pantalla principal cuando esté lista
      },
      theme: goldenTheme,
    );
  }
}
