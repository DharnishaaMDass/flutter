import 'package:flutter/material.dart';
import 'secondscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new MainScreen(),
        theme: new ThemeData(primarySwatch: Colors.indigo));
  }
}

class MainScreen extends StatefulWidget {
  @override
  State createState() => new MainScreenState();
}

class MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
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
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              new Form(
                  child: new Theme(
                data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                        labelStyle:
                            new TextStyle(color: Colors.teal, fontSize: 20.0))),
                child: new Container(
                  padding: const EdgeInsets.all(40.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "EnterEmail",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "EnterPassword",
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      new MaterialButton(
                        height: 40.0,
                        minWidth: 100.0,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Login"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()),
                          );
                        },
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
