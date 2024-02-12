import 'package:beggin/Pages/home.dart';
import 'package:beggin/Pages/open.dart';
import 'package:beggin/Pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:beggin/Pages/profile.dart';
import 'package:beggin/Pages/themes.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      //initialRoute: "/home",
      //home: const Homepage(),
      routes:{
        "/": (context)=> const Homepage(),
        "/home": (context)=> const Homepage(),
        "/sign": (context)=> const SignUp(),
        "/profile": (context)=> const ProfilePage(),
      },
    );

  }
}