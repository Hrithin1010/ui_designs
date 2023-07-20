import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:settings(),
  ));
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person,color: Colors.white,),
            title: Text('Profile',style: TextStyle(color: Colors.white),),
            onTap: () {
              // Handle profile settings
            },
          ),
          ListTile(
            leading: Icon(Icons.volume_up,color: Colors.white,),
            title: Text('Playback',style: TextStyle(color: Colors.white),),
            onTap: () {
              // Handle playback settings
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications,color: Colors.white,),
            title: Text('Notifications',style: TextStyle(color: Colors.white),),
            onTap: () {
              // Handle notification settings
            },
          ),
          ListTile(
            leading: Icon(Icons.data_usage,color: Colors.white,),
            title: Text('Data Usage',style: TextStyle(color: Colors.white),),
            onTap: () {
              // Handle data usage settings
            },
          ),
          ListTile(
            leading: Icon(Icons.help,color: Colors.white,),
            title: Text('Help',style: TextStyle(color: Colors.white),),
            onTap: () {
              // Handle help settings
            },
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.white,),
            title: Text('Log out',style: TextStyle(color: Colors.white),),
            onTap: () {
              // Handle log out
            },
          ),
        ],
      ),
    );
  }
}


