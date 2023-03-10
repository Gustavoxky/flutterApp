import 'package:eu/pages/nav_pages/detail_page.dart';
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
      home: DetailPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
    );
  }
}

