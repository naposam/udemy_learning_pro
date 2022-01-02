import 'package:flutter/material.dart';
class TabBarsScreen extends StatelessWidget {
  const TabBarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey,
         appBar: AppBar(
           title: Text("TabBars"),
           backgroundColor: Colors.black,
           bottom: TabBar(
             tabs: [
               Tab(icon: Icon(Icons.home),text: "Home",),
               Tab(icon: Icon(Icons.settings),text: "Settings",),
               Tab(icon: Icon(Icons.store),text: "Store",),

             ],
           ),
         ),
          body: TabBarView(
            children: [
              HomePage(),
              SettingsPage(),
              StorePage(),

            ],
          ),
        ),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Home",style: TextStyle(fontSize: 60),)),
    );
  }
}
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Settings",style: TextStyle(fontSize: 60),)),
    );
  }
}
class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Store",style: TextStyle(fontSize: 60),)),
    );
  }
}

