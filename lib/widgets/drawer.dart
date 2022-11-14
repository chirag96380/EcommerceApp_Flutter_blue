import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  final urlimahe =
      'https://images.unsplash.com/photo-1514161955277-4ea47eef2ff9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 107, 99, 255)),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 107, 99, 255)),
                  margin: EdgeInsets.zero,
                  accountName: Text('Chirag'),
                  accountEmail: Text('Chiraglathiya2002@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(urlimahe),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
