import 'package:flutter/material.dart';
import 'package:udemyapp/pages/grid_list.dart';
class NewCard extends StatelessWidget {
  final data datas;
  const NewCard({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow,
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Icon(datas.icon,size: 50,),),
            Text(datas.title,style: TextStyle(
              fontSize: 20,
            ),),
          ],
        ),
      ),
    );
  }
}
