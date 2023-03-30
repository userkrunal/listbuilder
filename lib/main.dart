import'package:flutter/material.dart';
import 'package:listbuilder/home_screen/home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Home_Screen(),
      },
    ),
  );
}