import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class PageOneScreen extends StatelessWidget {
  const PageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Rows"),
        centerTitle: true,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onPrimary: Colors.white,
              onSurface: Colors.grey,
            ),
            onPressed: ()=>Navigator.pushNamed(context, '/col'),
            child: Icon(Icons.arrow_forward),

          ) ,
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children:[ Row(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                margin: EdgeInsets.all(10),
                child: Text("Napoleon"),
              ) ,
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                margin: EdgeInsets.all(10),
                child: Text("Napo"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                margin: EdgeInsets.all(10),
                child: Text("leon"),
              ),

            ],
        ),
          Container(
            child: Column(
              children: [
                ElevatedButton.icon(
                    onPressed: ()=>Navigator.pushNamed(context, '/ListScreen'),
                    icon: Icon(Icons.list_alt), label: Text("List")),
                ElevatedButton.icon(

                    onPressed: ()=>Navigator.pushNamed(context, '/GridListScreen'),
                    icon: Icon(Icons.line_style_rounded),
                    label: Text("Grid View List"),

                ),

                ElevatedButton.icon(

                  onPressed: ()=>Navigator.pushNamed(context, '/CalculatorScreen'),
                  icon: Icon(Icons.line_style_rounded),
                  label: Text("Calculator"),

                ),


              ],
            ),
          )

        ],
      ),
    );
  }
}
