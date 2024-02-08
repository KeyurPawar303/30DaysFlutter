import 'package:flutter/material.dart';
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
      drawer: const Drawer(
        child: Text("Home"),
      ),
    );
  }
}
