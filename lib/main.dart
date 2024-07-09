import 'package:flutter/material.dart';
import 'package:islami/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.islamy,
      routes: {
        Homescreen.islamy: (context) => Homescreen(),
      },
    );
  }
}
