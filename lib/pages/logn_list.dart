import 'package:flutter/material.dart';
class LongList extends StatelessWidget {
  final List<String> name;
  const LongList({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
        centerTitle: true,

      ),
      body:ListView.builder(
          itemCount: name.length ,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("Hello ${name[index]}"),
            );
          }) ,
    );
  }
}


