import 'package:flutter/material.dart';
import 'thirdscreen.dart';

class Adjustvolume extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Adjustvolume> {
  double _value = 0.0;
  void setvalue(double value) => setState(() => _value = value);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.tealAccent[50], brightness: Brightness.light),
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Volume"),
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
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
                              padding: const EdgeInsets.all(0.01),
                            ),
                            new Text('Adjust Your Preffered Volume  Here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            new SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.red,
                                inactiveTrackColor: Colors.red[100],
                                trackShape: RectangularSliderTrackShape(),
                                trackHeight: 4.0,
                                thumbColor: Colors.redAccent,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 12.0),
                                overlayColor: Colors.red.withAlpha(32),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 28.0),
                              ),
                              child: Slider(
                                min: 0,
                                max: 100,
                                value: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ])
            ])));
  }
}
