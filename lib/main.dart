import 'package:flutter/material.dart';
import 'package:udemyapp/pages/alert_page.dart';
import 'package:udemyapp/pages/calculator.dart';
import 'package:udemyapp/pages/card.dart';
import 'package:udemyapp/pages/day_page.dart';
import 'package:udemyapp/pages/day_page_column.dart';
import 'package:udemyapp/pages/exampe_input.dart';
import 'package:udemyapp/pages/grid_list.dart';
import 'package:udemyapp/pages/list.dart';
import 'package:udemyapp/pages/logIn.dart';
import 'package:udemyapp/pages/logn_list.dart';
import 'package:udemyapp/pages/min_project.dart';
import 'package:udemyapp/pages/tab_bar.dart';

void main() =>runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/' : (context)=> PageOneScreen(),
    '/col': (context)=> ScreenColumn(),
    '/input': (context)=> ScreenInputField(),
    '/logScreen': (context)=>LoginScreenMini(),
    '/screenLogin': (context)=>ScreenLoginSecond(),
    '/cardScreen': (context)=>CardScreen(),
    '/TabScreen': (context)=>TabBarsScreen(),
    '/AlertScreen': (context)=>ScreenAlert(),
    '/ListScreen': (context)=>BasicList(),
    '/LongListScreen': (context)=>LongList(
      name: List<String>.generate(50, (a) => "Napo $a"),
    ),
    '/GridListScreen': (context)=>GridList(),
    '/CalculatorScreen': (context)=>Calculator(),



  },
));

