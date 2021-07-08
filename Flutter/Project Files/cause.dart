import 'package:flutter/material.dart';

class Cause extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.tealAccent[50], brightness: Brightness.light),
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Causes"),
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Cause()));
                },
                child: Icon(Icons.menu),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      print("A icon was Pressed");
                    },
                    child: Icon(Icons.search),
                  ),
                )
              ],
              actionsIconTheme: IconThemeData(color: Colors.black, size: 40.0),
            ),
            body: Stack(fit: StackFit.expand, children: <Widget>[
              new Image(
                image: new AssetImage("assets/garbage.JPEG"),
                fit: BoxFit.cover,
              ),
              new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.1),
                        ),
                        new Text('1) Liquid/Solid household waste',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        new Text('2) Hazardos waste ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        new Text('3) Recyclabe waste',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ],
                    )))
                  ])
            ])));
  }
}
