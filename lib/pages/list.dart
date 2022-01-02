import 'package:flutter/material.dart';
class BasicList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic List"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
             leading: Icon(Icons.home),
            title:Text("Home") ,
            // trailing: Icon(Icons.home),
            // subtitle: ,
          ),
          ListTile(
             leading: Icon(Icons.settings),
            title:Text("Settings") ,
            // trailing: Icon(Icons.home),
            // subtitle: ,
          ),
          ListTile(
             leading: Icon(Icons.person),
            title:Text("Profile") ,
            // trailing: Icon(Icons.home),
            // subtitle: ,
          ),
          ListTile(
             leading: Icon(Icons.call),
            title:Text("Contact") ,
            // trailing: Icon(Icons.home),
            // subtitle: ,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pushNamed(context, '/LongListScreen'),
        child: Icon(Icons.list_alt_rounded),
      ),
    );
  }
}
