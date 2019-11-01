import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      home: myHomePage(),

    ),

  );
}


// Stateless Widget & Stateful Widget
class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      title: Text("Learning Flutter"),
      ),
      body: Center(
          child: Text("hell yeah",style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ) ,
          ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("Jattthephuck@gmail.com"),
                accountName: Text("Jatt amli"),
                currentAccountPicture:CircleAvatar(
                  child: Text("69"),
                ),

              ),

              ListTile(
                onTap: (){
                  print("Flutter tapped");

                },
                leading: Image.network("https://www.codemate.com/wp-content/uploads/2016/02/flutter-logo-round.png"),
                title: Text("Flutter"),
                subtitle: Text("Flutter is love"),
                trailing: Icon(Icons.favorite),
              ),
              ListTile(
                onTap: (){

                  print("Swift tapped");
                },
                leading: Image.network("https://icon-library.net/images/swift-icon/swift-icon-10.jpg"),
                title: Text("Swift"),
                subtitle: Text("Swift is love"),
                trailing: Icon(Icons.favorite_border),
              ),
            ],
          ),
      ),

    );

  }

}