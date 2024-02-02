import 'package:flutter/material.dart';
class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage"),c),
      body: const Center(
        child: Text("Home page initiated"),
      ),
      drawer: const Drawer(
        child: Text("Home"),
      ),
    );
  }
}
