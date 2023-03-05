import 'package:eu/pages/Home_Page.dart';
import 'package:eu/pages/Welcome_page.dart';
import 'package:eu/pages/nav_pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()) ; 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
    );
  }
}

