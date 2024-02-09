import 'package:beggin/Pages/home.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget{
  const SignUp ({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
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
              Material(
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap:() async {
                    setState(() {
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    await Navigator.push(context, MaterialPageRoute(builder: (context)=> const Homepage(),));
                  },
                  child:AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 50,
                    width: 150,

                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    alignment: Alignment.center,
                    child:
                    const Text("SignUp",style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}