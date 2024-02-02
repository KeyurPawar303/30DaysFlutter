import 'package:flutter/material.dart';
class Loged extends StatelessWidget {
  const Loged({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/image.png",
              fit: BoxFit.cover,),
           const SizedBox(height: 20.0,),
           const Text("Login",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,)),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 34.0),
             child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",labelText: "UserName",
                  ),
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
                ElevatedButton( child: Text("Login"),style: TextButton.styleFrom(),onPressed: (){})
              ],
                       ),
           )
        ]
      ),
    );
  }
}
