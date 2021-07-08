import 'package:flutter/material.dart';
import 'four.dart';
import 'first.dart';

class Final extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.tealAccent[50], brightness: Brightness.light),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test your skill"),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Four()));
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => First()));
              },
              child: Text(
                "Log out",
              ),
            ),
          ],
          actionsIconTheme: IconThemeData(color: Colors.black, size: 40.0),
        ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
              image: AssetImage('assets/garbage.JPEG'),
              fit: BoxFit.fill,
            )),
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
                        padding: const EdgeInsets.all(40.0),
                      ),
                      new Text('Test your skill',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
