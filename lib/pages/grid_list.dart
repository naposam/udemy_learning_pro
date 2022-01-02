import 'package:flutter/material.dart';
import 'package:udemyapp/pages/newCard.dart';
class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid List"),
        centerTitle: true,

      ),
      body: GridView.count(
          crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        children: List.generate(datas.length, (index){
          return Center(
            child: NewCard(
             datas: datas[index],
            ),
          );
        }),
      ),
    );
  }
}
class data{
  const data({required this.title,required this.icon});
  final String title;
  final IconData icon;
}

const List<data>datas = const <data>[
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
  const data(title: 'Home',icon: Icons.home),
];
