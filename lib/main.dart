import 'package:exam27/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/':(context) => HomePage()
      },
    ),
  );
}
