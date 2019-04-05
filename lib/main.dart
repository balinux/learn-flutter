import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    title: "Balinux Application",
    ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red[800],
          leading: new Icon(Icons.home),
          title:new Center(
            child: new Text("Home Dashboard"),
          ),
          actions: <Widget>[
            new Icon(Icons.search)
          ],
        ),
        body: new Center(
          child: new Container(
            color: Colors.blue[900],
            width: 200.0,
            height: 100.0,
            child: new Center(
              child: new Text(
                "Button ",
                style: new TextStyle(
                    color: Colors.white, fontFamily: "Serif", fontSize: 20.0),
              ),
            ),
          ),
    ));
  }
}
