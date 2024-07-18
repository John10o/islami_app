import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/hadeth_details_screen.dart';
import 'package:islami/homescreen.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/quran/quran_details_screen.dart';

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
        QuranDetailsScreen.routeName: (context) => QuranDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightmood,
    );
  }
}
