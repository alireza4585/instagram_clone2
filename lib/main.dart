import 'package:flutter/material.dart';
import 'package:instagram/navigation.dart';
import 'package:instagram/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstagramHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
