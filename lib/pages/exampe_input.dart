import 'package:flutter/material.dart';
class ScreenInputField extends StatelessWidget {
  const ScreenInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Text Input Fields"),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: Column(
        children: [
          Text("Android Developer",style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.pink,
              letterSpacing: 1.0,
              wordSpacing: 6.0,
              shadows: [
                Shadow(
                  color: Colors.lightBlueAccent,
                  offset: Offset(3.0,3.0),

                )
              ]


          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(text: TextSpan(
              text: "Sam",
              style: TextStyle(
                color: Colors.yellow,

              ),
              children: [
                TextSpan(
                  text: "Napoleon",
                  style: TextStyle(
                   color: Colors.white
                  ),
                ),

              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(

              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "Name: ",
                  hintText: "Enter your name"


              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pushNamed(context, '/logScreen'),
        child: Icon(Icons.call_missed),

      ),
    );
  }
}
