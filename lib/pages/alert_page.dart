import 'package:flutter/material.dart';
class ScreenAlert extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController= new TextEditingController();
    return Scaffold(
     appBar: AppBar(
       title: Text("AlertMenu"),
     ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: ()async{
              // alertDialogueWidget(context);
             // textFieldalertDialogueWidget(context,_textEditingController);
              final field fieldatt= await confirmalertDialogueWidget(context);
              print("This is the selected $fieldatt");
            },
            child: Text("Alert Basics"),
          ),
        ),
      ),
    );
  }
}
 alertDialogueWidget(BuildContext context){
  showDialog(context: context,
      builder: (BuildContext context){
    return AlertDialog(
      title: Text("Confirm"),
      content: Text("This is the content of the alert box"),
      actions: [
       ElevatedButton(
           onPressed: (){
             Navigator.of(context).pop();
           },
           child: Text("OK"))
      ],
    );
      });

 }
 textFieldalertDialogueWidget(BuildContext context,TextEditingController textEditingController){
  showDialog(context: context,
      builder: (BuildContext context){
    return AlertDialog(
      title: Text("Text Field"),
      content: TextField(
        decoration: InputDecoration(
          hintText: "Enter your name",
        ),
        controller: textEditingController,
      ),
      actions: [
       ElevatedButton(
           onPressed: (){
             Navigator.of(context).pop();
           },
           child: Text("OK"))
      ],
    );
      });

 }
 enum field{Confirm,Accept}
 Future confirmalertDialogueWidget(BuildContext context)async{
  showDialog<field>(context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
    return AlertDialog(
      title: Text("Text Field"),
      content: Text("place your text here"),
      actions: [
       ElevatedButton(
           onPressed: (){
             Navigator.of(context).pop(field.Confirm);
           },
           child: Text("Cancel"),),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop(field.Accept);
          },
          child: Text("Accept"),),
      ],
    );
      });

 }


