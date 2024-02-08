import 'package:beggin/Pages/signup.dart';
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
  var buttonChange2 = false;
  final _formKey = GlobalKey<FormState>();
  goToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        buttonChange = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage(),));
      setState(() {
        buttonChange = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please Enter UserName";
                          }
                          else if(value!="admin"){
                            return "Incorrect username";
                          }
                            return null;
                        },
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
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter Password";
                          }
                          else if(value.length<6){
                            return "At least 6 digit";
                          }
                          else if(value!="admin123"){
                            return "Incorrect username";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(buttonChange? 50: 20),
                        child: InkWell(
                          onTap:() => goToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds:1),
                            width: buttonChange?50 :  150,
                            height: 50,
                            alignment: Alignment.center,
                            child:
                                buttonChange? const Icon(Icons.done,color: Colors.white,):
                             const Text("Login", style: TextStyle(color: Colors.white,),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                       Material(
                         color: Colors.blueAccent,
                         borderRadius:BorderRadius.circular(buttonChange2?50 : 20),
                         child: InkWell(

                           onTap:() async{
                             setState(() {
                               buttonChange2 = true;
                             });
                             await Future.delayed(const Duration(seconds: 1));
                             await Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp(),));
                             setState(() {
                               buttonChange2 = false;
                             });
                           },
                           child: AnimatedContainer(
                             duration: const Duration(seconds: 1),
                              height: 50,
                              width: buttonChange2?50: 150,
                             // decoration: BoxDecoration(
                              //  color: Colors.blueAccent,
                             // ),
                             alignment: Alignment.center,
                             child:
                             buttonChange2? const Icon(Icons.done,color: Colors.white,):
                             const Text("SignUp",style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                         ),
                       ),
                      const SizedBox(
                        height: 200,
                      )
                    ]
                   ),
                 )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
