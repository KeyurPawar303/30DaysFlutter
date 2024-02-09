import 'package:flutter/material.dart';
import 'package:beggin/Pages/Drawer.dart';
class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage"),),
      body: const Center(
        child: Text("Home page initiated"),
      ),
      drawer: MyDrawer(),
    );
  }
}
