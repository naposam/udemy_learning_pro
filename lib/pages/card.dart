import 'package:flutter/material.dart';
class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(

        title: Text("Card Screen"),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Napoleon Sam"),
                accountEmail: Text('samnapoleon86@gmail.com'),
              currentAccountPicture: Container(
               height: 60,
                width: 60,
                decoration: BoxDecoration(
                 color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(image: AssetImage('images/user.png'),
                    fit: BoxFit.fill
                  )
                ),

              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.store),
              title: Text("Store"),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Container(
            height: 200,
            width: 300,

            child: Card(
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ListTile(
                    leading: Icon(Icons.person,size: 40,color: Colors.black,),
                    title: Text("Napoleon Sam",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),

                    ),
                    subtitle: Text("samnapoleon@gmail.com"),
                  ),

                ),
                  ButtonBar(
                    children: [
                      FloatingActionButton.extended(
                          onPressed: ()=>Navigator.pushNamed(context, '/AlertScreen'),
                          label: Text('Contact'),
                        icon: Icon(Icons.call),
                      ),
                      FloatingActionButton.extended(
                          onPressed: ()=>Navigator.pushNamed(context, '/TabScreen'),
                          label: Text("Location"),
                           heroTag:Text("") ,

                        icon: Icon(Icons.location_on),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
