import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       // home: Container(
         // height: 100,
         // width: 100,
          // Following line show Image from assets
          //child: Image.asset('assets/image.png'),
       // )
    );
  }
}