import 'package:beggin/Pages/home.dart';
import 'package:beggin/Pages/open.dart';
import 'package:beggin/Pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_mail_app/open_mail_app.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final image = "https://imgs.search.brave.com/rirbibr-IRwiHxXPqo5hZf3WT81G2VkfltBZhhKPn1g/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9wdWIt/c3RhdGljLmZvdG9y/LmNvbS9hc3NldHMv/cHJvamVjdHMvcGFn/ZXMvZTE3NDg5MGI3/ZDYxNDkyNWE0ZjI3/NWI2Nzg3M2ZmYjcv/Zm90b3ItMDFiMDIw/M2U1ZTQxNDY5NTg5/MDg3NmQzMjllNTUx/ZDMuanBn";
    return  Drawer(
      child: Container(
        //color: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.zero,
         children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child:UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              ),
              accountName: const Text("Admin"),
              accountEmail: const Text("Admin@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(image),),

            ),
          ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,
              ),
              title: Text("Home",
                textScaleFactor: 1.2,),
           ),
            InkWell(
              onTap: (){
                setState(() {});
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const ProfilePage()));
              },
             child:Container(
               child: const  ListTile(
                 leading: Icon(CupertinoIcons.profile_circled,
                 ),
                 title: Text("Profile",
                   textScaleFactor: 1.2,),
               ),
             ),
           ),
           InkWell(
             onTap: (){
               setState(() {
               });
               //LaunchApp.openApp(androidPackageName:'com.android.Gmail');
               OpenMailApp.openMailApp();
             },
             child: const ListTile(
               leading: Icon(CupertinoIcons.mail,
               ),
               title: Text("Mails",
                 textScaleFactor: 1.2,),
             ),
           )
        ],
        ),
      ),
      );
  }
}
