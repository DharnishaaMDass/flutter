import 'package:flutter/material.dart';
import 'package:hello_world/username.dart';
import 'thirdscreen.dart';
import 'password.dart';
import 'username.dart';
import 'progress.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new SecondScreen(),
        theme: new ThemeData(primarySwatch: Colors.amber));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(title: Text('Trash Can')),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/garbage.JPEG"),
            fit: BoxFit.cover,
          ),
          new Form(
              child: new Theme(
            data: new ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.amber,
                inputDecorationTheme: new InputDecorationTheme(
                    labelStyle:
                        new TextStyle(color: Colors.teal, fontSize: 80.0))),
            child: new Container(
              padding: const EdgeInsets.all(60.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 50.0,
                    color: Colors.lightBlueAccent,
                    textColor: Colors.black,
                    child: new Text("View Progress"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Progress()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 50.0,
                    color: Colors.lightBlueAccent,
                    textColor: Colors.black,
                    child: new Text("Change Username"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Username()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 50.0,
                    color: Colors.lightBlueAccent,
                    textColor: Colors.black,
                    child: new Text("Change Password"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Password()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.black,
                    textColor: Colors.white,
                    child: new Text("Next"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
