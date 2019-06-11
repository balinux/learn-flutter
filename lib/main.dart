import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    title: "Learn ListView",
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List dataJson;
  Future<String> getData() async {
    http.Response results = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJson = json.decode(results.body);
    });
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Icon(Icons.home),
        backgroundColor: Colors.orange,
      ),
      body: new ListView.builder(
        itemCount: dataJson == null ? 0 : dataJson.length,
        itemBuilder: (context, i) {
          return new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Card(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  dataJson[i]['title'],
                  style:
                      new TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                ),
                new Text(
                  dataJson[i]['body'],
                )
              ],
            )),
          );
        },
      ),
    );
  }
}
