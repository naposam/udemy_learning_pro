import 'package:flutter/material.dart';

class LoginScreenMini extends StatelessWidget {
  const LoginScreenMini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Small Project"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top:20.0),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.lightBlueAccent,
                  border: Border.all(color: Colors.white,width: 2),
                ),
                child: Center(child: Text("UD", style: TextStyle(
                  fontSize: 80,
                  fontStyle: FontStyle.italic,
                  color: Colors.white
                ),)),
              ),
            ),
            Container(
            margin: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(20.0),


            ),
            child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextField(
            decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter your Name",
            labelText: "Napoleon",
            icon: Icon(Icons.person,color: Colors.white,)

            ),
            ),
            ),
            ),
            Container(
            margin: EdgeInsets.only(left: 30,right: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(20.0),


            ),
            child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextField(
              obscureText: true,
            decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter your Name",
            labelText: "Password",
            icon: Icon(Icons.lock,color: Colors.white,)

            ),
            ),
            ),
            ),
            Container(
              width: 500,
              height: 50,
              margin: EdgeInsets.only(left: 30,right: 30,top: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20.0),


              ),
                child:Center(
                  child: InkWell(
                    child: Text("Login",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    onTap: ()=>Navigator.pushNamed(context, '/screenLogin'),
                  ),
                ) ,

            ),

          ],
        ),
      ),
    );
  }


}
