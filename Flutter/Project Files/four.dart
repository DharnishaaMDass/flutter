import 'package:flutter/material.dart';
import 'final.dart';
import 'cause.dart';
import 'overcome.dart';
import 'garbage.dart';

class Four extends StatelessWidget {
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
              padding: const EdgeInsets.all(40.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.amber,
                    textColor: Colors.black,
                    child: new Text("Type Of Garbage"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cause()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.amber,
                    textColor: Colors.black,
                    child: new Text("Causes"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Overcome()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.amber,
                    textColor: Colors.black,
                    child: new Text("Way To Overcome"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Garbage()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.tealAccent,
                    textColor: Colors.black,
                    child: new Text("Test Your Skill"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Final()),
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
