import 'package:flutter/material.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext context)=> ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: const  AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        //textTheme: Theme.of(context).textTheme,
      )
  );
   // Add more themes if needed and import;
}