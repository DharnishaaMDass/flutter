import 'package:flutter/material.dart';
import 'mainscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new First(), theme: new ThemeData(primarySwatch: Colors.indigo));
  }
}

class First extends StatefulWidget {
  @override
  State createState() => new FirstState();
}

class FirstState extends State<First> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

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
            color: Colors.black38,
            colorBlendMode: BlendMode.softLight,
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
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.tealAccent,
                    textColor: Colors.black,
                    child: new Text("Hi, Enter HERE"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    },
                  ),
                  new MaterialButton(
                    height: 40.0,
                    minWidth: 40.0,
                    color: Colors.amberAccent,
                    textColor: Colors.black,
                    child: new Text(
                        "Group Members: Lisha,Dharnishaa,Alisia,Sheshalani,Sholestica"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => First()),
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
