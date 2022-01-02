import 'package:flutter/material.dart';

class ScreenColumn extends StatelessWidget {
  const ScreenColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Columns"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          ElevatedButton(
            onPressed: ()=>Navigator.pushNamed(context, '/input'),
            child: Icon(Icons.arrow_forward),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onPrimary: Colors.white,
            ),
          ),
        ],

      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Text("Column"),

          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Text("Column"),

          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Text("Column"),

          ),
        ],
      ) ,
    );
  }
}
