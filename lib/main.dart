import 'package:disenos/screens/basic_dising.dart';
import 'package:disenos/screens/scroll_desing.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_desing': (_) => const BasicDisingScreen(),
        'scroll_screen': (_) => const ScrollDesingScreen()
      },
    );
  }
}
