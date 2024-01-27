import 'package:flutter/material.dart';
class Homepage extends StatelessWidget{
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
