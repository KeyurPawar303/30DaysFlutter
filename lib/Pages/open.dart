import 'package:flutter/material.dart';
import 'package:beggin/Pages/routes.dart';

import 'home.dart';
class Loged extends StatefulWidget {
  const Loged({super.key});

  @override
  State<Loged> createState() => _LogedState();
}

class _LogedState extends State<Loged> {
  var name="";
  var buttonChange = false;
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset("assets/image.png",
                  fit: BoxFit.cover,),
               const SizedBox(height: 20.0,),
              Text("Welcome $name",style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,)),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 34.0),
                 child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",labelText: "Username",
                      ),
                      onChanged: (value){
                        name = value;
                        setState((){});
                      },

                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap:() async  {
                        setState((){
                          buttonChange = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Homepage(),));
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds:1),
                        width: buttonChange?50 :  150,
                        height: 50,

                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          //shape: buttonChange? BoxShape.circle : BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(buttonChange? 50: 20),
                        ),
                        alignment: Alignment.center,
                        child:
                            buttonChange? const Icon(Icons.done,color: Colors.white,):
                         const Text("Login", style: TextStyle(color: Colors.white,),),
                      ),
                    ),
                    //ElevatedButton( style: TextButton.styleFrom(minimumSize: const Size(50,50)),onPressed: (){
                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=> const Homepage(),));
                  //  },child: const Text("Login"),),
                    const SizedBox(height: 20.0,),
                          ]
                 ),
               )
            ]
          ),
        ),
      ),
    );
  }
}
