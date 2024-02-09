import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

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
           const ListTile(
             leading: Icon(CupertinoIcons.profile_circled,
             ),
             title: Text("Profile",
               textScaleFactor: 1.2,),
           ),
           const ListTile(
             leading: Icon(CupertinoIcons.mail,
             ),
             title: Text("Mails",
               textScaleFactor: 1.2,),
           )
        ],
        ),
      ),
      );
  }
}
