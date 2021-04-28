import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/foto.jpg'),
              ),
              Text(
                'Tatiana Sousa',
                style: TextStyle(
                  fontFamily: 'Bangers',
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black45,
                ),
              ),
              buildCard('+55 86 99999 9999', Icons.phone),
              buildCard('tatianamariassousa@ gmail.com', Icons.email),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(String text, IconData icon){
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading:Icon(
          icon,
          color: Colors.blueGrey[300],
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.blueGrey[300],
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}