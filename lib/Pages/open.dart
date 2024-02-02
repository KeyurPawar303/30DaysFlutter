import 'package:flutter/material.dart';
class Loged extends StatelessWidget {
  const Loged({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Material(
      child: Center(
        child: Text("Wellcome",style: TextStyle(
          fontSize: 30, color: Colors.blueGrey
        ),),
      ),
    );
  }
}
