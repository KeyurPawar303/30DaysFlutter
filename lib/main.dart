import 'package:beggin/Pages/home.dart';
import 'package:beggin/Pages/open.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //home: const Homepage(),
      routes:{
        "/": (context)=> Loged(),
        "/home": (context)=> Homepage(),
      },
    );

  }
}