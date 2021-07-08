import 'package:flutter/material.dart';
import 'adjustlight.dart';
import 'adjustvolume.dart';
import 'four.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new ThirdScreen(),
        theme: new ThemeData(primarySwatch: Colors.amber));
  }
}

class ThirdScreen extends StatelessWidget {
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
                    color: Colors.pink[300],
                    textColor: Colors.white,
                    child: new Text("Brightness"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Adjustlight()),
                      );
                    },
                    splashColor: Colors.redAccent,
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.pink[300],
                    textColor: Colors.white,
                    child: new Text("Volume"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Adjustvolume()),
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
                        MaterialPageRoute(builder: (context) => Four()),
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
