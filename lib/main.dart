import 'package:flutter/material.dart';
import 'package:social_links_profile/screens/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Scaffold(
        backgroundColor: Color.fromRGBO(20, 20, 20, 1.0),
        body: MainScreen(),
      ),
      theme: ThemeData(
        fontFamily: "Inter",
      ),
    ),
  );
}
