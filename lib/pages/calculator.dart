import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output="0";
  String _output="0";
  double num1=0.0;
  double num2=0.0;
  String operand ="";


  operation(String btntxt){
    if(btntxt== "C"){
      _output="0";
      num2=0.0;
      num1=0.0;
      operand="";
    }else if(btntxt == "+" || btntxt == "/" || btntxt == "-"|| btntxt == "x"){
      num1 = double.parse(output);
      operand=btntxt;
      _output="0";
    }else if(btntxt == "="){
      num2 = double.parse(output);
      if(operand=="+"){
        _output=(num1+num2).toString();
      }if(operand=="-"){
        _output=(num1-num2).toString();
      }if(operand=="/"){
        _output=(num1/num2).toString();
      }if(operand=="x"){
        _output=(num1*num2).toString();
      }
      num2=0.0;
      num1=0.0;
      operand="";
      
    }else{
      _output=_output + btntxt;
    }
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });

  }
  Widget button(String btntxt){
    return Expanded(
      child: RawMaterialButton(
        shape: Border.all(color: Colors.black,width: 2),
        fillColor: Colors.black12,
        padding: EdgeInsets.all(30.0),
        splashColor: Colors.black,
        child: Text("$btntxt",style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w600

        ),),
        onPressed: (){
         operation(btntxt);
        },

      ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded
              (child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 2),
                color: Colors.black12,
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 8),
              child: Text("$output",style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w600
              ),),
            )),
            Row(
              children: [
                button("9"),
                SizedBox(width: 5,),
                button("8"),
                SizedBox(width: 5,),
                button("7"),
                SizedBox(width: 5,),
                button("/"),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                button("4"),
                SizedBox(width: 5,),
                button("5"),
                SizedBox(width: 5,),
                button("6"),
                SizedBox(width: 5,),
                button("x"),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                button("3"),
                SizedBox(width: 5,),
                button("2"),
                SizedBox(width: 5,),
                button("1"),
                SizedBox(width: 5,),
                button("-"),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                button("0"),
                SizedBox(width: 5,),
                button("C"),
                SizedBox(width: 5,),
                button("="),
                SizedBox(width: 5,),
                button("+"),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
