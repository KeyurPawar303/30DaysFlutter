import 'package:flutter/material.dart';
class SignUp extends StatefulWidget{
  const SignUp ({super.key});

  @override
  State<SignUp> createState() => _HomepageState();
}

class _HomepageState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return  Material(
      child: Form(
        key: _formKey,
        child: Padding(

          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
             const SizedBox(
                height: 50,
              ),
              const Text("Enter Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(
                height: 75,
              ),
              TextFormField(
                  decoration:
                  const InputDecoration(
                    hintText: "Enter Name", labelText: "Username",
                  ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Set Password",labelText: "Password",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 150,
                height: 50,
                color: Colors.blueAccent,


              )
            ],
          ),
        ),
      ),
    );
  }
}